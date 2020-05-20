# 多文件编译

## 多源文件同时编译
```shell
gcc func.c   main.c -o  main
```
warning: implicit declaration of function 'helloword' is invalid in C99 [-Wimplicit-function-declaration]

## 分开编译

```shell
gcc -c func.c
gcc -c main.c
gcc -o main func.o main.o
```

## 参考链接
[1] [C语言-GCC编译多个C文件](https://blog.csdn.net/weixin_39089680/article/details/79375088)

