cmake_minimum_required(VERSION 3.5)

project(cmake6)

aux_source_directory(. DIR_SRCS)
aux_source_directory(3rd DIR_SRCS2)

aux_header_directory(. DIR_SRCS)

INCLUDE_DIRECTORIES(3rd)

add_executable(cmake6 ${DIR_SRCS} ${DIR_SRCS2})

# target_link_libraries (cmake6 ${EXTRA_LIBS})