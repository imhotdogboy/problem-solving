//
//  1652.cpp
//  problem-solving
//
//  Created by hotdogboy on 11/18/24.
//

#include <vector>
using namespace std;

class Solution {
public:
    vector<int> decrypt(vector<int>& code, int k) {
        vector<int> answer;
        int size = code.size();

        if (k == 0) {
            return vector<int>(size, 0);
        }

        for (int i = 0; i < size; i++) {
            int sum = 0;

            if (k > 0) {
                for (int j = 1; j <= k; j++) {
                    sum += code[(i + j) % size];
                }
            } else {
                for (int j = -1; j >= k; j--) {
                    sum += code[(size + i + j) % size];
                }
            }

            answer.push_back(sum);
        }

        return answer;
    }
};