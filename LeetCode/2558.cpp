//
//  2558.cpp
//  problem-solving
//
//  Created by hotdogboy on 12/12/24.
//

#include <cmath>
#include <queue>
using namespace std;

class Solution {
public:
    long long pickGifts(vector<int>& gifts, int k) {
        // Use priority_queue to implement max heap
        priority_queue<long long> pq;
        long long answer = 0;

        // Build heap
        for (int i = 0; i < gifts.size(); i++) {
            pq.push(gifts[i]);
        }

        // Get the largest value
        for (int i = 0; i < k; i++) {
            int gift = pq.top();
            pq.pop();
            pq.push(floor(sqrt(gift)));
        }

        // Calculate total sum
        while (!pq.empty()) {
            answer += pq.top();
            pq.pop();
        }

        return answer;
    }
};