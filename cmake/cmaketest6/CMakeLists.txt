cmake_minimum_required(VERSION 3.5)

# 工程信息
project(cmake6)

# 查找源文件
aux_source_directory(. DIR_SRCS)
aux_source_directory(3rd DIR_SRCS2)

# 查找头文件
file(GLOB HEADER ./3rd/*.h)

# 包含目录
INCLUDE_DIRECTORIES(3rd)

# 生成信息
add_executable(cmake6 ${HEADER} ${DIR_SRCS} ${DIR_SRCS2})
