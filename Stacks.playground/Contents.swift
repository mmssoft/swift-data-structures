import Foundation

/*
KEY NOTES:
 Stacks are LIFO - Last In, First Out
 push() and pop() are two essential operations needed by Stacks.
*/

example(of: "Basic Stack") {
    var stack = Stack<Int>()
    stack.push(1)
    stack.push(2)
    stack.push(3)
    stack.push(4)

    print(stack)
}

example(of: "Initializing from Array") {
    var stack = Stack([1, 2, 3, 4])
    print(stack)
}

example(of: "Initializing from Array") {
    var stack = Stack(["A", "B", "C", "D"])
    print(stack)
    stack.pop()
    print(stack)
}

struct Challenge1 {
    /*
     Create a function that uses a stack to print the contents of an array in reversed order.
     */
    static func printInReserve<T>(_ elements: [T]) {
        var stack = Stack(elements)
        while let value = stack.pop() {
            print(value)
        }
    }
    /*
     Time complexity of this is 0(n) since we have to traverse the array
     Space complexity of this is O(n) since we have to store the tack
     */
}
example(of: "Challenge 1 result") {
    Challenge1.printInReserve(["O", "L", "L", "E", "H"])
}

struct Challenge2 {
    /*
     Check for balanced parenthness. Given a string, check if there are ( and ) characters, and return true if the parentheses in the string are balanced.
     */
    static func checkIfBalanced(string: String) -> Bool {
        var stack = Stack<Character>()
        
        for character in string {
            if character == "(" {
                stack.push(character)
            } else if character == ")" {
                if stack.isEmpty {
                    return false
                } else {
                    stack.pop()
                }
            }
        }
        return stack.isEmpty
    }
    /*
     Time complexity of this is 0(n) since we have to traverse the array
     Space complexity of this is O(n) since we have to store the tack
     */
}
example(of: "Challenge 2 results") {
    Challenge2.checkIfBalanced(string: "h(e) llo (())")
    Challenge2.checkIfBalanced(string: "h(e) llo (()))")
    Challenge2.checkIfBalanced(string: "(((")
    Challenge2.checkIfBalanced(string: ")))")
}
