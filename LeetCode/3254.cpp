//
//  3254.cpp
//  problem-solving
//
//  Created by hotdogboy on 11/16/24.
//

#include <vector>
using namespace std;

class Solution {
public:
    vector<int> resultsArray(vector<int>& nums, int k) {
        vector<int> answer;
        bool ascending = true;

        // If k is 1 every element is ascending
        if (k == 1) {
            return nums;
        }

        // Check first segment of size k
        for (int i = 0; i < k - 1; i++) {
            // Check two consecutive numbers
            if (nums[i] + 1 != nums[i + 1]) {
                answer.push_back(-1);
                ascending = false;
                break;
            }
        }

        // If first segment is ascending
        if (ascending) {
            answer.push_back(nums[k - 1]);
        }

        // Process array using sliding window
        for (int i = 1; i <= nums.size() - k; i++) {
            if (ascending) {
                // If previous segment was ascending
                if (nums[i + k - 2] + 1 == nums[i + k - 1]) {
                    answer.push_back(nums[i + k - 1]);
                } else {
                    answer.push_back(-1);
                    ascending = false;
                }
            } else {
                ascending = true;

                // Check current segment of size k
                for (int j = i; j < i + k - 1; j++) {
                    if (nums[j] + 1 != nums[j + 1]) {
                        answer.push_back(-1);
                        ascending = false;
                        break;
                    }
                }

                // If current segment is ascending
                if (ascending) {
                    answer.push_back(nums[i + k - 1]);
                }
            }
        }

        return answer;
    }
};