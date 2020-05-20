# 带动态库编译

## 编译func
```shell
gcc -fPIC -shared func.c -o libfunc.so 编译动态库

 gcc main.c libfunc.so -o main
 或者
  gcc main.c -L. -lfunc -o main
```

linux下查看依赖
ldd main

macos下查看依赖
otool -L main