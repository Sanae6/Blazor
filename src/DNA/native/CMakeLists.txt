cmake_minimum_required (VERSION 3.6)

project(dna C CXX)

#set (CMAKE_C_COMPILER emcc)
#set (CMAKE_CXX_COMPILER emcc)

#set (CMAKE_INSTALL_PREFIX ${CMAKE_CURRENT_SOURCE_DIR}/../../Blazor.Host/wwwroot/_framework)
#set (CMAKE_CXX_FLAGS "-Wno-pointer-sign")
#set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Oz")
#set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -s NO_EXIT_RUNTIME=1")
#set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -s RESERVED_FUNCTION_POINTERS=20")
#set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -s ASSERTIONS=1")
#set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -s EXPORTED_FUNCTIONS=\"['_main', '_JSInterop_CallDotNet', '_Debugger_Continue', '_Debugger_SetBreakPoint', '_Debugger_Step', '_Debugger_Reset', '_Debugger_Clear_BreakPoints']\"")
#set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -s WASM=1")
#set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} --js-library js-interop.js")

file(GLOB EXECUTABLE_SOURCES src/*.c)
list(REMOVE_ITEM EXECUTABLE_SOURCES src/dnaApi.c)
file(GLOB LIBRARY_SOURCES src/*.c)

add_executable(dna ${EXECUTABLE_SOURCES} src/dnaApi.c src/dnaApi.h)
#add_library(libdna SHARED ${LIBRARY_SOURCES})
if(WIN32)
    target_link_libraries(dna wsock32 ws2_32)
endif()