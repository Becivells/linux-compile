# 编译排错指南

开源项目和一些 c/c++ 项目编译过程需要大量依赖。如何解决这些依赖。我这里从简单案例到原理讲解。希望对以后非开发人员进行编译项目得时候有所帮助
## 环境
需要安装 docker、docker-compose、make
学习时直接在项目下敲 `make` 即可


## 错误
[error: implicit declaration of function ‘pthread_mutexattr_settype’ 引出GNU_SOURCE探索](https://blog.csdn.net/sky_qing/article/details/8965184)
代码表明，如果_XOPEN_SOURCE 的值大于等于500，那么就会定义_USE_UNIX98为1，所以我们可以定义_XOPEN_SOURCE为500。
这样的话，pthread.h头文件中的pthread_mutexattr_settype函数也就会被声明。

也就是说，_GUN_SOURCE宏一旦被定义，就会定义上面几种宏，其中会定义_XOPEN_SOURCE为700，正好满足了定义_GNU_SOURCE宏的条件。所以我也可以定义宏_GNU_SOURCE.



综上所述，在编译时加上编译选项：
-D_XOPEN_SOURCE=500 或 -D_GNU_SOURCE 即可解决。


其实还有另一种方法解决error: implicit declaration of function ‘pthread_mutexattr_settype’ 错误，那就是在编译的时候把编译选项“-Werror-implicit-function-declaration”去掉即可，但是不推荐去掉该选项！

