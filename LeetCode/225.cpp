//
//  225.cpp
//  problem-solving
//
//  Created by hotdogboy on 11/17/24.
//

#include <queue>
using namespace std;

class MyStack {
public:
    // Queue to implement stack
    queue<int> stack;

    // Initializes the stack
    MyStack() {}

    // Pushes element x to the top of the stack
    void push(int x) {
        int size = stack.size();
        stack.push(x);

        for (int i = 0; i < size; i++) {
            stack.push(stack.front());
            stack.pop();
        }
    }

    // Removes element on the top of the stack
    int pop() {
        int pop = stack.front();
        stack.pop();
        return pop;
    }

    // Returns element on the top of the stack
    int top() {
        return stack.front();
    }

    // Returns true if the stack is empty
    bool empty() {
        return stack.empty();
    }
};

/**
 * Your MyStack object will be instantiated and called as such:
 * MyStack* obj = new MyStack();
 * obj->push(x);
 * int param_2 = obj->pop();
 * int param_3 = obj->top();
 * bool param_4 = obj->empty();
 */