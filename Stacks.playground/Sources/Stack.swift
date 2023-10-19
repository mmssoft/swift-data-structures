import Foundation

public struct Stack<Element> {
    // MARK: - Properties
    private var storage: [Element] = []
    
    // MARK: - Init
    public init() {}
    
    public init(
        _ elements: [Element]
    ) {
        storage = elements
    }
    
    // MARK: - Operations
    public mutating func push(_ element: Element) {
        storage.append(element)
    }
    
    @discardableResult
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

extension Stack: CustomDebugStringConvertible {
    public var debugDescription: String {
        """
        ----top----
        \(storage.map { "\($0)" }.reversed().joined(separator: "\n"))
        -----------
        """
    }
}
