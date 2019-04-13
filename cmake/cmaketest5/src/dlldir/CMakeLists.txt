# 查找当前目录下的所有源文件
# 并将名称保存到 DIR_LIB_SRCS 变量
SET(SOURCE_FILE MathDll.h MathDll.cpp)

SET(INSTALL_DIR ${CMAKE_SOURCE_DIR}/bin)
SET(HEADER_DIR ${CMAKE_SOURCE_DIR}/include)

# 生成链接库
ADD_LIBRARY (MathFunctions ${SOURCE_FILE})

# 指定库生成的目录
INSTALL (TARGETS MathFunctions DESTINATION ${INSTALL_DIR})

# 指定头文件复制目标目录
INSTALL (FILES MathDll.h DESTINATION ${HEADER_DIR})
