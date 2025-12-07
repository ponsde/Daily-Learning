#include <algorithm>
#include <string>
#include <vector>

using namespace std;

struct Node
{
    int cnt = 0;
    Node *next[26]{};
};

class Solution
{
public:
    int minimumLengthEncoding(vector<string> &words)
    {
        sort(words.begin(), words.end());
        auto idx = unique(words.begin(), words.end());
        words.erase(idx, words.end());
        int l = words.size();
        Node *root = new Node{};
        for (int i = 0; i < l; ++i)
        {
            string w = words[i];
            int lw = w.size();
            auto t = root;
            for (int j = lw - 1; j >= 0; --j)
            {
                char c = w[j] - 'a';
                if (t->next[c] == nullptr)
                {
                    t->next[c] = new Node{};
                }
                t = t->next[c];
                t->cnt++;
            }
        }
        int ans = 0;
        for (int i = 0; i < l; ++i)
        {
            string w = words[i];
            int lw = w.size();
            auto cur = root;
            bool check = false;
            for (auto j = lw - 1; j >= 0; --j)
            {
                char c = w[j] - 'a';
                cur = cur->next[c];
                if (cur->cnt == 1)
                {
                    check = true;
                    break;
                }
            }
            if (check == true)
            {
                ans += lw + 1;
            }
        }
        return ans;
    }
};

// 题目的要求是字符数的结尾都要是#
// 因此不会出现在结尾在中间的情况
// 倒者历遍字符串
// 但要注意加上time、time、time
// 这种重复字符串的情况
// 需要先排序去重才可以