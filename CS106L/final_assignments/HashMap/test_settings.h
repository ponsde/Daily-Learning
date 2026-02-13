// 测试设置 - 使用此文件更改执行哪些测试

// 将 0 更改为 1 以运行该测试
// 注意：在 .h 中有头文件并在 .cpp 中有实现之前，
// 测试将无法编译其各自的函数

// 里程碑 1 基本功能的测试用例
// 基本函数
#define RUN_TEST_1A 1
#define RUN_TEST_1B 0
#define RUN_TEST_1C 0
#define RUN_TEST_1D 0
#define RUN_TEST_1E 0
#define RUN_TEST_1F 0
#define RUN_TEST_1G 0
#define RUN_TEST_1H 0
#define RUN_TEST_1I 0

// Iterator
#define RUN_TEST_1J 0
#define RUN_TEST_1K 0
#define RUN_TEST_1L 0
#define RUN_TEST_1M 0
#define RUN_TEST_1N 0
#define RUN_TEST_1O 0
#define RUN_TEST_1P 0
#define RUN_TEST_1Q 0
#define RUN_TEST_1R 0
#define RUN_TEST_1S 0
#define RUN_TEST_1T 0
#define RUN_TEST_1U 0
#define RUN_TEST_1V 0

// 里程碑 2：范围构造函数（可选）
#define RUN_TEST_2A 0
#define RUN_TEST_2B 0
// 里程碑 2：初始化列表构造函数（可选）
#define RUN_TEST_2C 0
#define RUN_TEST_2D 0

// 里程碑 3：operator[]
#define RUN_TEST_3A 0
#define RUN_TEST_3B 0
// 里程碑 3：operator<<
#define RUN_TEST_3C 0
#define RUN_TEST_3D 0
// 里程碑 3：operator== 和 operator!=
#define RUN_TEST_3E 0
#define RUN_TEST_3F 0

// 里程碑 4：复制操作
#define RUN_TEST_4A 0
#define RUN_TEST_4B 0
#define RUN_TEST_4C 0

// 里程碑 4：移动操作
// 警告：即使你没有实现它们，这些也可能会通过
// - 在实现复制或移动之前，3AB 将失败，3CDEFGH 将通过
// - 在实现复制但未实现移动之后，3GH 将失败，3ABCDEF 将通过
// - 在实现复制和移动之后，所有这些都应该通过（你应该以此为目标）
#define RUN_TEST_4D 0
#define RUN_TEST_4E 0
#define RUN_TEST_4F 0
#define RUN_TEST_4G 0
#define RUN_TEST_4H 0

// 里程碑 5：基准测试（可选）
#define RUN_TEST_PERF 0
