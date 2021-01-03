import Foundation

public struct Stack<Element> {
    var storage: [Element] = []

    public init() {}

    public init(_ elements: [Element]) {
        storage = elements
    }

    public var isEmpty: Bool {
        peek() == nil
    }

    public mutating func push(_ value: Element) {
        storage.append(value)
    }

    public mutating func pop() -> Element? {
        storage.popLast()
    }

    public func peek() -> Element? {
        storage.last
    }
}

extension Stack: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Element...) {
        storage = elements
    }
}
