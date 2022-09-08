set(QRDUINO_SOURCES qrframe.c qrencode.c)
set(QRDUINO_HEADERS ecctable.h qrencode.h qrbits.h)

add_library(libqrduino STATIC ${QRDUINO_SOURCES} ${QRDUINO_HEADERS})

add_application(qrduino qrtest.c)

target_link_libraries(qrduino.elf libqrduino)