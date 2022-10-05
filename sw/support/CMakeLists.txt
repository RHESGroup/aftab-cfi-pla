set(SOURCES
    src/main.c
    src/beebsc.c
    src/board.c
    src/chip.c
    # src/dummy-crt0.c
    # src/dummy-libc.c
    # src/dummy-libgcc.c
    # src/dummy-libm.c
    src/boardsupport.c
    )

set(HEADERS
    inc/beebsc.h
    inc/support.h
    inc/boardsupport.h
    )

include_directories(inc/)

add_library(support STATIC ${SOURCES} ${HEADERS})