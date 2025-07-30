import UIKit


/// Naveen Dummy Duplicate Code
/// date duplicate

struct Stack<T> {
    var items: [T] = []
    var isEmpty: Bool {
        peek() == nil
    }
    
    init() { }
    
    init(items: [T]) {
        self.items = items
    }
    
    mutating func push(_ element: T) {
        items.append(element)
    }
    
    mutating func pop() -> T? {
        items.popLast()
    }
    
    func peek() -> T? {
        items.last
    }
}

func balancedParentheses(_ s: String) -> Bool {
    var stack: Stack<Character> = Stack<Character>()
    
    for char in s {
        if char == "(" {
            stack.push(char)
        }
        if char == ")" {
            guard !stack.isEmpty else {
                return false
            }
            stack.pop()
        }
    }
    
    return stack.isEmpty
}

//print(balancedParentheses("(hello world"))

func reveredString(_ input: [Character]) {
    var stack: Stack<Character> = Stack(items: input)
    
    while !stack.isEmpty {
        print(stack.pop()!)
    }
}

reveredString(["A","B","C","D"])
