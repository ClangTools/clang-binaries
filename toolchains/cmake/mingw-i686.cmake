set(CMAKE_SYSTEM_NAME Windows)
set(CMAKE_SYSTEM_PROCESSOR x86_32)

if(DEFINED ENV{TOOLCHAIN_ROOT_PATH})
    file(TO_CMAKE_PATH $ENV{TOOLCHAIN_ROOT_PATH} TOOLCHAIN_ROOT_PATH)
else()
    message(FATAL_ERROR "TOOLCHAIN_ROOT_PATH env must be defined")
endif()

set(TOOLCHAIN_ROOT_PATH ${TOOLCHAIN_ROOT_PATH} CACHE STRING "root path to toolchain")
set(CMAKE_RC_COMPILER "${TOOLCHAIN_ROOT_PATH}/toolchains/toolchains/llvm-mingw-msvcrt/bin/i686-w64-mingw32-windres")
set(CMAKE_C_COMPILER "${TOOLCHAIN_ROOT_PATH}/toolchains/toolchains/llvm-mingw-msvcrt/bin/i686-w64-mingw32-clang")
set(CMAKE_CXX_COMPILER "${TOOLCHAIN_ROOT_PATH}/toolchains/toolchains/llvm-mingw-msvcrt/bin/i686-w64-mingw32-clang++")

set(CMAKE_FIND_FRAMEWORK FIRST)
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)