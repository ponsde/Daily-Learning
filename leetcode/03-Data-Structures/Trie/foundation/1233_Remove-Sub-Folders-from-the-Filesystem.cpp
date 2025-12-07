#include <algorithm>
#include <string>
#include <vector>

using namespace std;

struct Node
{
    bool end = false;
    Node *next[27]{};
};

class Solution
{
public:
    vector<string> removeSubfolders(vector<string> &folder)
    {
        sort(folder.begin(), folder.end());
        int l = folder.size();
        Node *root = new Node{};
        for (int i = 0; i < l; ++i)
        {
            string w = folder[i];
            auto t = root;
            int lw = w.size();
            for (auto c : w)
            {
                if (c == '/')
                {
                    if (t->next[26] == nullptr)
                    {
                        t->next[26] = new Node{};
                    }
                    t = t->next[26];
                }
                else
                {
                    c -= 'a';
                    if (t->next[c] == nullptr)
                    {
                        t->next[c] = new Node{};
                    }
                    t = t->next[c];
                }
            }
            t->end = true;
        }

        vector<string> ans;
        for (int i = 0; i < l; ++i)
        {
            string w = folder[i];
            int lw = w.size();
            w.push_back('/'); // 加入 / 方便统一处理
            auto cur = root;
            string str = "";
            for (int j = 0; j <= lw; ++j)
            {
                if (cur->end == true && w[j] == '/') // 当当前为/时，cur为/的上一个字母的位置，因此是j而不是j-1
                {
                    ans.push_back(str);
                    break;
                }
                if (j == lw) // 统计完，break
                {
                    break;
                }
                char c = w[j];
                str += c;

                if (c == '/')
                {
                    cur = cur->next[26];
                }
                else
                {
                    c -= 'a';
                    cur = cur->next[c];
                }
            }
        }
        auto k = unique(ans.begin(), ans.end());
        ans.erase(k, ans.end());
        return ans;
    }
};

// 非常丑陋的写法
