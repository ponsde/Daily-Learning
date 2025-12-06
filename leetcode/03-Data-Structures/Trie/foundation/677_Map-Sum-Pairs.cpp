#include <string>
#include <vector>

using namespace std;

struct Node
{
    int value = 0;
    bool end = false;
    Node *next[26]{};
};

class MapSum
{
    Node *root = new Node{};

    void count(Node *node, int &cnt)
    {
        if (node->end == true)
        {
            cnt += node->value;
        }
        for (int i = 0; i < 26; ++i)
        {
            if (node->next[i] != nullptr)
            {
                count(node->next[i], cnt);
            }
        }
    }

public:
    MapSum()
    {
    }

    void insert(string key, int val)
    {
        auto cur = root;
        for (auto c : key)
        {
            c -= 'a';
            if (cur->next[c] == nullptr)
            {
                cur->next[c] = new Node{};
            }
            cur = cur->next[c];
        }
        cur->value = val;
        cur->end = true;
    }

    int sum(string prefix)
    {
        auto cur = root;
        for (auto c : prefix)
        {
            c -= 'a';
            if (cur->next[c] == nullptr)
            {
                return 0;
            }
            cur = cur->next[c];
        }
        int cnt = 0;
        count(cur, cnt);
        return cnt;
    }
};

// 简简单单前缀树
// 需要注意的是当前缀不存在时应该返回0，若是不检查是否为空，cur会变成nullptr，访问会报错

//  特别注意count中当node->end==true是不能return，因为某个单词可能就是另一个单词的前缀
