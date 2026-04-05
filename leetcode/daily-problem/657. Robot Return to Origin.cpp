#include <bits/stdc++.h>

using namespace std;

class Solution {
public:
    bool judgeCircle(string moves) {
        int l = moves.size();
        unordered_map<char, int> hash;
        for (int i = 0; i < l; ++i)
        {
            hash[moves[i]]++;
        }

        return hash['R'] == hash['L'] && hash['U'] == hash['D'];
    }
};

/*
    简单题简单做，只要L和R、U和D的数量相等就行了
*/