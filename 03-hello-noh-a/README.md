# 带静态库编译

## 编译func
```shell
gcc -c func.c -o func.o 编译静态库

ar crv libfunc.a func.o

 gcc main.c libfunc.a -o main
 或者
  gcc main.c -L. -lfunc -o main
```

main.c:6:5: warning: implicit declaration of function 'my_lib_function' is invalid in C99 [-Wimplicit-function-declaration]
    my_lib_function();