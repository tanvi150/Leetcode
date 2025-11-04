class Solution(object):
    def isPalindrome(self, x):
        # Negative numbers are not palindromes
        if x < 0 or (x % 10 == 0 and x != 0):
            return False
        
        reversedNum = 0
        original = x

        while x > 0:
            reversedNum = reversedNum * 10 + x % 10
            x //= 10

        if original == reversedNum:
            return True
        else:
            return False

### Explanation!!

# Step 0: Initialize
# original = 121      // keep original number for comparison
# x = 121             // number we will reverse
# reversed_num = 0    // store reversed number

# Step 1: Reverse loop
# while x > 0:
#     last_digit = x % 10                    // get last digit
#     reversed_num = reversed_num * 10 + last_digit  // append to reversed number
#     x = x // 10                            // remove last digit from x
#     # After each iteration, reversed_num builds up: 1 → 12 → 121, x reduces: 121 → 12 → 1 → 0

# Step 2: Compare
# if original == reversed_num:
#     # Palindrome: True
# else:
#     # Not a palindrome: False

# Key Ideas:
# - % 10 gives the last digit
# - * 10 + last_digit appends to reversed number
# - // 10 removes last digit from x
# - Compare original vs reversed_num at the end
