# Problem: Conversion from Roman numerals to integers
# Link: https://leetcode.com/problems/roman-to-integer
# Approach: The smaller number BEFORE a larger number is SUBTRACTED, while the smaller number AFTER the larger number is ADDED. 
          # However, you can only put one smaller number BEFORE the larger number, and in the following pairs ONLY:
                # I from V (5) or X (10)
                # X from L (50) or C (100)
                # C from D (500) or M (1000)

# Time Complexity: The algorithm iterates through the input string once, processing each Roman numeral character exactly one time.
                 # Each operation inside the loop — dictionary lookup (roman_dict[char]), comparison, addition, or subtraction — takes constant time.
                 # Therefore, if the length of the string is n, the total time taken is O(n).

# Space Complexity: The algorithm uses only a few fixed-size variables:
                  # A dictionary roman_dict with 7 constant entries
                  # Integers -- total, previous_value, and value
                  # No additional data structures grow with input size, so the memory used stays constant regardless of n.

class Solution(object):
    def romanToInt(self, s):
        roman_dict = {
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000
        }

        # initialisation
        total = 0
        previous_value = 0

        for char in reversed(s): #for each character in reversed string
            value = roman_dict[char]
            
            if value < previous_value:
                total -= value #subtract if smaller value comes before bigger value
            else:
                total += value
                previous_value = value
        return total
