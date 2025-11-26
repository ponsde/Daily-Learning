#include <string>

using namespace std;

class Solution
{
public:
    string strWithout3a3b(int a, int b)
    {
        int ca = 0;
        int cb = 0;
        string ans = "";
        int l = a + b;
        for (int i = 0; i < l; ++i)
        {
            if ((a > b && ca < 2) || cb == 2)
            {
                ans += 'a';
                cb = 0;
                ca++;
                a--;
            }
            else
            {
                ans += 'b';
                ca = 0;
                cb++;
                b--;
            }
        }
        return ans;
    }
};

// 贪心问题
// 在ca或cb小于2时，尽可能选最多的字母
// 若ca 或 cb 为 2 时，换另一个字母加入