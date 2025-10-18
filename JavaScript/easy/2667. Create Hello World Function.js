/** Leetcode: 2667. Create Hello World Function
Link: https://leetcode.com/problems/create-hello-world-function

Problem:  Return a function that always returns the string "Hello World". 
Approach: Use a closure — return an inner function that returns the fixed string.

Time Complexity: O(1)
Space Complexity: O(1)
*/

function createHelloWorld(){
    return function(){
        return "Hello World"
    };
}
