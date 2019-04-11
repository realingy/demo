cmake_minimum_required(VERSION 3.5)

project(cmake6)

add_subdirectory(3rd)
set (EXTRA_LIBS 3rd)

INCLUDE_DIRECTORIES(3rd)

add_executable(cmake6 cmake6.cpp)

target_link_libraries (cmake6 ${EXTRA_LIBS})