# HashMap
在这个编程作业中，你将实现一个关联容器类，它具有与 STL 提供的 [unordered_map](https://en.cppreference.com/w/cpp/container/unordered_map) 类似的功能。关于 HashMap 的详细描述和作业指导，你可以参考这份[文档](./doc/HashMap_doc.pdf)。正如文档中所述，对于这个作业的原始版本，你会得到一个几乎完整的 HashMap 实现，只需要做一些修改并添加少量方法。但是强烈建议你在阅读并理解原始[入门代码](./doc/HashMap_Starter/)中提供的 HashMap 实现后，在空的[源文件](./hashmap.cpp)中从头开始实现每个方法。

要构建和测试你的代码，你可以参考以下命令。你可以通过更改 [test_settings.h](./test_settings.h) 中的宏定义来选择性地启用对应于你已实现功能的测试用例。
```shell
mkdir -p build && cd build
cmake ..
make
# 功能测试
./hashmap_test
# 性能测试
./hashmap_perf
```
