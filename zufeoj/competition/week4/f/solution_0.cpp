#include <iostream>
#include <vector>
#include <algorithm>
 
using namespace std;
 
struct edge{
    int b;
    int e;
    int t;
};
 
class FenwickTree
{
private:
        vector<int> tree;
         
        int prefixSum (int i)
        {
            int sum = 0;
            for (; i > 0; i &= i - 1)
            {
                sum += tree[i];
            }
            return sum;
        }
     
public:
        FenwickTree (int size) : tree(size + 1, 0)
        {
             
        }
         
        void update (int index, int delta)
        {
            for (int i = index; i < tree.size(); i += i & -i)
            {
                tree[i] += delta;
            }
        }
         
        int sumRange (int left, int right)
        {
            return prefixSum(right) - prefixSum(left - 1);
        }
};
 
bool cmp(const edge& a, const edge& b)
{
    return a.e < b.e;
}
 
int main(void)
{
    int n, h;
    cin >> n >> h;
    vector<edge> vec(h);
    for (int i = 0; i < h; ++i)
    {
        int b, e, t;
        cin >> b >> e >> t;
        vec[i].b = b;
        vec[i].e = e;
        vec[i].t = t;
    }
    sort(vec.begin(), vec.end(), cmp);
    FenwickTree tree(n);
    int ans = 0;
    for (int i = 0; i < h; ++i)
    {
        int left = vec[i].b;
        int right = vec[i].e;
        int req = vec[i].t;
        int current = tree.sumRange(left, right);
        if (current >= req)
        {
            continue;
        }
        int need = req - current;
        ans += need;
        for (int j = right; j >= left; --j)
        {
            if (need == 0)
            {
                break;
            }
            if (tree.sumRange(j, j) == 0)
            {
                need--;
                tree.update(j, 1);
            }
        }
    }
    cout << ans << endl;
     
 
}