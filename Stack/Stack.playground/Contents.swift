example(of: "push operation in stack") {
    var stack = Stack<Int>()
    
    stack.push(1)
    stack.push(2)
    stack.push(3)
    
    print(stack)
}

example(of: "pop operation in stack") {
    
    var stack = Stack<Int>()
    
    stack.push(1)
    stack.push(2)
    stack.push(3)
    
    print(stack, "\n")
    
    stack.pop()
    
    print(stack, "\n")
    
    stack.pop()
    
    print(stack, "\n")
    
    stack.pop()
    
    print(stack, "\n")
}

example(of: "initializing a stack from an array literal") {
    var stack: Stack = [1.0, 2.0, 3.0, 4.0]
    print(stack)
    stack.pop()
    print(stack)
}

example(of: "initializing a stack from an array") {
    let array = ["A", "B", "C", "D"]
    var stack = Stack(array)
    print(stack)
    stack.pop()
    print(stack)
}
