#include <string>
#include <vector>
#include <algorithm>

using namespace std;

struct Node
{
    bool end = false;
    string word = "";
    Node *next[26]{};
};

class Solution
{
    void count(Node *node, vector<string> &vec)
    {
        if (node->end == true)
        {
            vec.push_back(node->word);
        }
        for (int i = 0; i < 26; ++i)
        {
            if (node->next[i] != nullptr)
            {
                count(node->next[i], vec);
            }
        }
    }

public:
    vector<vector<string>> suggestedProducts(vector<string> &products, string searchWord)
    {
        int lp = products.size();
        Node *root = new Node{};
        for (int i = 0; i < lp; ++i)
        {
            string w = products[i];
            Node *cur = root;
            for (auto c : w)
            {
                c -= 'a';
                if (cur->next[c] == nullptr)
                {
                    cur->next[c] = new Node{};
                }
                cur = cur->next[c];
            }
            cur->end = true;
            cur->word = w;
        }

        Node *t = root;
        int l = searchWord.size();
        vector<vector<string>> ans(l);
        for (int i = 0; i < l; ++i)
        {
            char c = searchWord[i] - 'a';
            t = t->next[c];
            if (t == nullptr)
            {
                break;
            }
            count(t, ans[i]);
            sort(ans[i].begin(), ans[i].end());
            if (ans[i].size() > 3)
            {
                ans[i].resize(3);
            }
        }
        return ans;
    }
};

// 简单的前缀树
// 需要注意的是当输入的前缀不存在时应该返回空数组，注意是空数组而不是""