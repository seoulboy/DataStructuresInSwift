import Foundation

public struct Stack<Element> {
    public var storage = [Element]()
    
    public init() {}
    
    public init(array elements: [Element]) {
        storage = elements
    }
    
    public mutating func push(element: Element) {
        storage.append(element)
    }
    
    public mutating func pop() -> Element? {
        storage.popLast()
    }
    
    public func peek() -> Element? {
        storage.last
    }
    
    public var isEmpty: Bool {
        peek() == nil
    }
}

extension Stack: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Element...) {
        storage = elements
    }
}
