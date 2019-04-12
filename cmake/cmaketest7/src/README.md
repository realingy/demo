### 安装和测试

CMake也可以指定安装规则，以及添加测试。这两个功能分别可以通过在产生 Makefile 后使用 make install 和 make test 来执行。
在以前的GNU Makefile里，你可能需要为此编写install和test两个伪目标和相应的规则，但在CMake里，这样的工作同样只需要简单
的调用几条命令。

#### 定制安装规则
首先在dlldir/CMakeLists.txt文件里添加下面两行,指定dll库的安装路径和头文件的复制目标目录:
install (TARGETS MathFunctions DESTINATION ${PROJECT_BINARY_DIR}/bin)
install (FILES MathDll.h DESTINATION ${PROJECT_BINARY_DIR}/include)

#### 之后修改主目录的CMakeLists文件，在末尾添加下面几行：
install (TARGETS Demo5 DESTINATION ${PROJECT_BINARY_DIR}/bin)

#### 通过上面的定制，生成的Demo5文件和libMathFunctions.o文件将会被复制到install/bin中。
