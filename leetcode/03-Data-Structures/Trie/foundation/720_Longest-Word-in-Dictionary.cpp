#include <string>
#include <vector>

using namespace std;

struct Node
{
    bool end = false;
    Node *next[26]{};
};

class Solution
{
public:
    string longestWord(vector<string> &words)
    {
        int lw = words.size();
        Node *root = new Node{};
        for (int i = 0; i < lw; ++i)
        {
            string word = words[i];
            Node *cur = root;
            for (auto c : word)
            {
                c -= 'a';
                if (cur->next[c] == nullptr)
                {
                    cur->next[c] = new Node{};
                }
                cur = cur->next[c];
            }
            cur->end = true;
        }
        string ans = "";
        int l_ans = 0;
        for (int i = 0; i < lw; ++i)
        {
            string word = words[i];
            Node *cur = root;
            for (auto c : word)
            {
                c -= 'a';
                if (cur->next[c] == nullptr || cur->next[c]->end == false)
                {
                    cur = nullptr;
                    break;
                }
                cur = cur->next[c];
            }
            if (cur != nullptr)
            {
                if (word.size() > l_ans || (word.size() == l_ans && word < ans))
                {
                    ans = word;
                    l_ans = word.size();
                }
            }
        }
        return ans;
    }
};

// 构造链必须从 words 里的某个“真实存在的单词”开始,不能从空串 "" 开始,不能随便造中间词（例如 “ab” 必须本来就在 words 里）
// 所以才能这样写，不能任意加，把我卡了好一会，结果发现理解错了