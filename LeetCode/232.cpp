//
//  232.cpp
//  problem-solving
//
//  Created by hotdogboy on 11/17/24.
//

#include <stack>
using namespace std;

class MyQueue {
public:
    // Stack to implement queue
    stack<int> head;
    stack<int> tail;

    // Initializes the queue
    MyQueue() {}

    // Pushes element x to the back of the queue
    void push(int x) {
        head.push(x);
    }

    // Removes element from the front of the queue
    int pop() {
        if (tail.empty()) {
            while (!head.empty()) {
                tail.push(head.top());
                head.pop();
            }
        }

        int pop = tail.top();
        tail.pop();
        return pop;
    }

    // Returns element at the front of the queue
    int peek() {
        if (tail.empty()) {
            while (!head.empty()) {
                tail.push(head.top());
                head.pop();
            }
        }

        return tail.top();
    }

    // Returns true if the queue is empty
    bool empty() {
        return head.empty() && tail.empty();
    }
};

/**
 * Your MyQueue object will be instantiated and called as such:
 * MyQueue* obj = new MyQueue();
 * obj->push(x);
 * int param_2 = obj->pop();
 * int param_3 = obj->peek();
 * bool param_4 = obj->empty();
 */