#include <string>
#include <vector>

using namespace std;

struct Node
{
    bool end = false;
    Node *son[26]{};
};

class Trie
{
private:
    Node *root = new Node{};
    bool find(string word)
    {
        Node *cur = root;
        for (auto c : word)
        {
            c -= 'a';
            if (cur->son[c] == nullptr)
            {
                return true;
            }
            cur = cur->son[c];
        }
        return false;
    }

    void destroy(Node *node)
    {
        if (node == nullptr)
        {
            return;
        }
        for (auto son : node->son)
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

    bool check(string word)
    {
        return find(word);
    }
};

class Solution
{
public:
    vector<string> partitionString(string s)
    {
        vector<string> ans{};
        string t = "";
        int l = s.size();
        Trie tr;
        for (int i = 0; i < l; ++i)
        {
            t += s[i];
            bool k = tr.check(t);
            if (k == true)
            {
                tr.insert(t);
                ans.push_back(t);
                t = "";
            }
        }
        return ans;
    }
};

// 第一版，直接使用trie来做，这里是弄了个trie出来

// struct Node
// {
//     Node *son[26]{};
// };

class Solution
{
public:
    vector<string> partitionString(string s)
    {
        vector<string> ans{};
        string t = "";
        int l = s.size();
        Node *root = new Node{};
        Node *cur = root;
        for (int i = 0; i < l; ++i)
        {
            t += s[i];
            if (cur->son[s[i] - 'a'] == nullptr)
            {
                cur->son[s[i] - 'a'] = new Node{};
                ans.push_back(t);
                cur = root;
                t = "";
                continue;
            }
            cur = cur->son[s[i] - 'a'];
        }
        return ans;
    }
};

// 第二版，没有建立一个trie， 用了struct做就好，用trie太麻烦了