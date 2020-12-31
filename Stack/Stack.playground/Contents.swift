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

