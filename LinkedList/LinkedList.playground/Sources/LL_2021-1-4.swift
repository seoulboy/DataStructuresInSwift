import Foundation

public struct LinkedList<Value> {
    public var head: Node<Value>?
    public var tail: Node<Value>?
    public var isEmpty: Bool {
        head == nil
    }
    
    public init() {}
    
    public mutating func push(_ value: Value) {
        head = Node(value: value, next: head)
        if tail == nil {
            tail = head
        }
    }
    
    public mutating func append(_ value: Value) {
        guard !isEmpty else {
            push(value)
            return
        }
        tail?.next = Node(value: value)
        tail = tail?.next
    }
    
    public func node(at index: Int) -> Node<Value>? {
        var currentIndex = 0
        var currentNode = head
        
        while currentNode != nil && currentIndex < index {
            currentNode = currentNode!.next
            currentIndex += 1
        }
        
        return currentNode
    }
    /*
        왠지 node(at:)이 뭔가 더 필요할 것 같았다. 그런데 사실 필요없었다. 자신감을 가지자.
     */
    
    @discardableResult
    public mutating func insert(_ value: Value, after node: Node<Value>) -> Node<Value> {
        guard tail !== node else {
            append(value)
            return tail!
        }
        
        node.next = Node(value: value, next: node.next!)
        return node.next!
    }
    
    
    public mutating func pop() -> Value? {
        defer {
            head = head?.next
            if isEmpty {
                tail = nil
            }
        }
        return head?.value
    }
    
    public mutating func removeLast() -> Value? {
        guard let head = head else {
            return nil
        }
    
        guard head.next != nil else {
            return pop()
        }
        
        var prev = head
        var current = head
        
        while let next = current.next {
            prev = current
            current = next
        }
        
        prev.next = nil
        tail = prev
        
        return current.value
    }
    
    public mutating func remove(after node: Node<Value>) -> Value? {
        defer {
            if node.next === tail {
                tail = node
            }
            node.next = node.next?.next
        }
        return node.next?.value
    }
    
    /* remove(after:)에서 node.next.value를 리턴하고, defer문 안에서 노드간 연결해주는 것까지는 기억했으나, 다음 노드가 만약 tail이라면 현 노드를 tail로 변경해주는 것을 깜빡했다.
     */
}

extension LinkedList: CustomStringConvertible {
    public var description: String {
        guard let head = head else {
            return "this is an empty list"
        }
        
        return String(describing: head)
    }
}


