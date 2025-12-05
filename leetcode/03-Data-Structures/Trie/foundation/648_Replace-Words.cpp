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
    string replaceWords(vector<string> &dictionary, string sentence)
    {
        int ld = dictionary.size();
        Node *root = new Node{};
        for (int i = 0; i < ld; ++i)
        {
            string w = dictionary[i];
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
        }
        int ls = sentence.size();
        string ans = "";
        string word = "";
        Node *first = root;
        sentence += ' ';
        for (int i = 0; i < ls; ++i)
        {
            if (sentence[i] == ' ')
            {
                ans += word;
                ans += ' ';
                first = root;
                word = "";
                continue;
            }

            if (first != nullptr && first->end == true)
            {
                continue;
            }
            word += sentence[i];
            char c = sentence[i] - 'a';
            if (first != nullptr && first->next[c] != nullptr)
            {
                first = first->next[c];
            }
            else
            {
                first = nullptr;
            }
        }
        ans += word;
        return ans;
    }
};

// 先把字典里的书放入trie中，然后对句子进行遍历
// 遇到空格就把当前单词加入答案，并重置
// 我在ans后加了一个空格，方便计算
// 当first的end不为true时，若trie->next为空，则说明该单词并不是前缀，所以将first置为空，然后加入单词
// 当first的end为true时，若trie->next为空，则说明该单词已经是前缀，后续的字母都不需要加入单词
// 最后将最后一个单词加入答案即可
// 注意最后一个单词后面没有空格，所以单独加入一次