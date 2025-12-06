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
    vector<int> sumPrefixScores(vector<string> &words)
    {
        int l = words.size();
        Node *root = new Node{};
        for (int i = 0; i < l; ++i)
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
                cur->cnt++;
            }
        }
        vector<int> ans;
        for (int i = 0; i < l; ++i)
        {
            int cnt = 0;
            string t = words[i];
            Node *cur = root;
            for (auto c : t)
            {
                c -= 'a';
                cur = cur->next[c];
                cnt += cur->cnt;
            }
            ans.push_back(cnt);
        }
        return ans;
    }
};

// 理解对题意就还行
// 对每个单词历遍，并对每个前缀计数
// 然后再历遍每个单词，对每个前缀出现的次数求和
// 然后得出结果