#include <vector>
using namespace std;


class NumArray {
private:
    vector<int> nums;
    vector<int> tree;

    int prefixSum(int i)
    {
        int sum = 0;
        for (; i > 0; i &= i - 1)
        {
            sum += tree[i];
        }
        return sum;
    }
public:
    NumArray(vector<int>& nums) : nums(nums), tree(nums.size() + 1) {
        int l = nums.size();
        for (int i = 1; i <= l; ++i)
        {
            tree[i] += nums[i - 1];
            int next = i + (i & -i);
            if (next <= l)
            {
                tree[next] += tree[i];
            }
        }
    }
    
    void update(int index, int val) {
        int delta = val - nums[index];
        nums[index] = val;
        for (int i = index + 1; i < tree.size(); i += i & -i)
        {
            tree[i] += delta;
        }
    }
    
    int sumRange(int left, int right) {
        return prefixSum(right + 1) - prefixSum(left);
    }
};

