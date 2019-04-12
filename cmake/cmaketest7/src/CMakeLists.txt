cmake_minimum_required(VERSION 3.5)

# 工程信息
set(project_name CMakeDemo7)
project(${project_name})

set(CMAKE_CONFIGRATION_TYPES "Release" CACHE STRING "" FORCE)

# 第三方库
set(3rd_lib_dir ${CMAKE_SOURCE_DIR}/3rd)

link_directories(${3rd_lib_dir}/lib)
set(3RDLIBS "optimized;Release/MathMultiply;debug;Debug/MathMultiply;optimized;Release/StartUseDll;debug;Debug/StartUseDll")

# C++标准
set(CMAKE_CXX_STANDARD 11)

add_definitions(-D_UNICODE)

# 查找源文件
aux_source_directory(. SRC_ROOT)
aux_source_directory(./subdir1 SRC_SUB1)
aux_source_directory(./subdir2 SRC_SUB2)
aux_source_directory(./subdir3 SRC_SUB3)

# 查找头文件
file(GLOB HEADERROOT ./*.h)
file(GLOB HEADERSUB1 ./subdir1/*.h)
file(GLOB HEADERSUB2 ./subdir2/*.h)
file(GLOB HEADERSUB3 ./subdir3/*.h)

# 包含目录
INCLUDE_DIRECTORIES(${3rd_lib_dir}/include)
INCLUDE_DIRECTORIES(${CMAKE_SOURCE_DIR}/subdir1)
INCLUDE_DIRECTORIES(${CMAKE_SOURCE_DIR}/subdir2)
INCLUDE_DIRECTORIES(${CMAKE_SOURCE_DIR}/subdir3)

# 生成信息
set(DLL_NAME dllCMakeDemo7)
add_library(${DLL_NAME} SHARED ${HEADERROOT} ${HEADERSUB1} ${HEADERSUB2} ${HEADERSUB3} ${SRC_ROOT} ${SRC_SUB1} ${SRC_SUB2} ${SRC_SUB3})
target_link_libraries(${DLL_NAME} ${3RDLIBS})
