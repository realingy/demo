cmake_minimum_required(VERSION 3.5)

project(cmake6)

# add_subdirectory(3rd)
# set (EXTRA_LIBS 3rd)

aux_source_directory(. DIR_SRCS)
aux_source_directory(3rd DIR_SRCS2)

INCLUDE_DIRECTORIES(3rd)

# add_executable(cmake6 cmake6.cpp 3rd/3rd.cpp)
add_executable(cmake6 ${DIR_SRCS} ${DIR_SRCS2})

# target_link_libraries (cmake6 ${EXTRA_LIBS})