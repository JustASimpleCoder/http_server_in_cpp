cmake_minimum_required(VERSION 3.13)

project(http_server_in_cpp)

file(GLOB_RECURSE SOURCE_FILES src/*.cpp src/*.hpp)

set(CMAKE_CXX_STANDARD 23)
set(THREAD_PREFER_PYTHREAD_FLAG ON)

find_package(Threads REQUIRED)
find_package(ZLIB REQUIRED)

add_executable(http_server ${SOURCE_FILES})

target_link_libraries(http_server PRIVATE Threads::Threads ZLIB::ZLIB)

