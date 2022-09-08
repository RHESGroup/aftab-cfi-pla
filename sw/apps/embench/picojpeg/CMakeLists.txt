set(PICOJPEG_SOURCES libpicojpeg.c)
set(PICOJPEG_HEADERS picojpeg.h)

add_library(libpicojpeg STATIC ${PICOJPEG_SOURCES} ${PICOJPEG_HEADERS})

add_application(picojpeg picojpeg_test.c)

target_link_libraries(picojpeg.elf libpicojpeg)
