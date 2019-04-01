# CMake 最低版本号要求
cmake_minimum_required (VERSION 3.6)
# 项目信息
project (CMakeDemo2)
# 指定生成目标
add_executable(Demo main.cpp CallFunction.cpp)
# 指定生成可执行文件目录
SET(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/bin)