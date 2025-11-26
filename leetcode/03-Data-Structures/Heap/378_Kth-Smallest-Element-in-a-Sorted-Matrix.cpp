#include <vector>
#include <queue>

using namespace std;

class Solution
{
public:
    int kthSmallest(vector<vector<int>> &matrix, int k)
    {
        priority_queue<int> pq;
        int n = matrix.size();
        for (int i = 0; i < n; ++i)
        {
            for (int j = 0; j < n; ++j)
            {
                pq.push(matrix[i][j]);
                while (pq.size() > k)
                {
                    pq.pop();
                }
            }
        }
        return pq.top();
    }
};

// 用堆简单的，但更好的解法是二分答案，我去写写试试

class Solution
{
public:
    int kthSmallest(vector<vector<int>> &matrix, int k)
    {
        int n = matrix.size();
        auto check = [&](int m)
        {
            int i = 0;
            int j = n - 1;
            int cnt = 0;
            while (i < n && j >= 0 && cnt < k)
            {
                if (matrix[i][j] > m)
                {
                    --j;
                }
                else
                {
                    cnt += j + 1;
                    i++;
                }
            }
            return cnt >= k;
        };
        int left = matrix[0][0];
        int right = matrix[n - 1][n - 1] + 1;
        while (left < right)
        {
            int m = left + (right - left) / 2;
            check(m) ? right = m : left = m + 1;
        }
        return left;
    }
};

// 我是呆瓜，我看了灵神的题解才想出来
// 若是小于等于m的值个数大于等于k，说明m可以是第k小，若不能，则不行，需要缩小m
// 因为行和列都是升序排列，因此matrix[0][0]为最小matrix[n - 1][n - 1]为最大，因此找出left 和 right
// 从右上角开始，是该值大于m，说明该列全部满足，列左移，若小于等于m，从0到j全满足
