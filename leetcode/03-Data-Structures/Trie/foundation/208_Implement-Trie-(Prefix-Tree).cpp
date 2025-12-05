#include <string>

using namespace std;

struct Node
{
    bool end = false;
    Node *son[26]{};
};

class Trie
{
    Node *root = new Node{};
    int find(string word)
    {
        Node *cur = root;
        for (char c : word)
        {
            c -= 'a';
            if (cur->son[c] == nullptr)
            {
                return 0;
            }
            cur = cur->son[c];
        }
        return cur->end == true ? 2 : 1;
    }

    void destroy(Node *node)
    {
        if (node == nullptr)
        {
            return;
        }
        for (Node *son : node->son)
        {
            destroy(son);
        }
        delete node;
    }

public:
    ~Trie()
    {
        destroy(root);
    }

    void insert(string word)
    {
        Node *cur = root;
        for (auto c : word)
        {
            c -= 'a';
            if (cur->son[c] == nullptr)
            {
                cur->son[c] = new Node{};
            }
            cur = cur->son[c];
        }
        cur->end = true;
    }

    bool search(string word)
    {
        return find(word) == 2;
    }

    bool startsWith(string prefix)
    {
        return find(prefix) > 0;
    }
};

// 跟cs50的那个差不多，第一眼看过去就知道是咋样的了
// 函数名前面有个~是析构函数的意思，在运行完毕后会自动调用，负责释放内存
// destroy函数是用来递归删除节点的，防止内存泄漏
// 其他的函数简简单单