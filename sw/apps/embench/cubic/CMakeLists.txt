set(CUBIC_SOURCES libcubic.c)
set(CUBIC_HEADERS pi.h snipmath.h sniptype.h)

add_library(libcubic STATIC ${CUBIC_SOURCES} ${CUBIC_HEADERS})

add_application(cubic basicmath_small.c)

target_link_libraries(cubic.elf libcubic m)