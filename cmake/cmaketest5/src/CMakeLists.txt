# CMake 最低版本号要求
cmake_minimum_required (VERSION 2.8)

# 项目信息
PROJECT (CmakeDemo5)

# CMAKE C++标准
SET(CMAKE_CXX_STANDARD 11)

# 查找当前目录下的所有源文件
# 并将名称保存到 DIR_SRCS 变量
AUX_SOURCE_DIRECTORY(. DIR_SRCS)

# 添加子目录
ADD_SUBDIRECTORY(dlldir)

# 添加头文件包含目录
INCLUDE_DIRECTORIES(dlldir)

# 指定生成目标 
add_executable(Demo5 main.cpp)

# 添加链接库
target_link_libraries(Demo5 MathFunctions)

# SET(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/bin)

# INSTALL (TARGETS Demo5 DESTINATION )