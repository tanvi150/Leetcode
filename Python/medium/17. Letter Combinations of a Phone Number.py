dictionary = {
    "1": "Invalid Entry",
    "2": ["a", "b", "c"],
    "3": ["d", "e", "f"],
    "4": ["g", "h", "i"],
    "5": ["j", "k", "l"],
    "6": ["m", "n", "o"],
    "7": ["p", "q", "r", "s"],
    "8": ["t", "u", "v"],
    "9": ["w", "x", "y", "z"],
    "0": "Invalid Entry"
}

class Solution(object):
    def letterCombinations(self, digits):
        # Exit the function if user inputs '1' or '0'
        for digit in digits:
            if dictionary[digit] == "Invalid Entry":
                return []

        # Start with a result containing an empty string
        result = [""]
        
        # Build combinations step by step
        for digit in digits:
            tempList = []

            for prefix in result:
                for letter in dictionary[digit]:
                    tempList.append(prefix + letter)
            result = tempList
        return result
