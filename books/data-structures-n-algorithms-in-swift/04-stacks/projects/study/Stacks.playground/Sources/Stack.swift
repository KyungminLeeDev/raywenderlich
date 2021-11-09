import Foundation

/// 스택
/// - LIFO 구조
/// - 핵심 메서드 Push/Pop
///     - Push: top에 요소 추가
///     - Pop: top의 요소 제거
/// - 스택은 모든 분야에서 자주 사용된다.
///     - iOS에서 내비게이션 스택을 사용하여 뷰 컨트롤러를 view에 넣고 뺀다
///     - 아키텍쳐 레벨에서 메모리 할당에 스택을 사용한다. 지역 변수를 위한 메모리는 스택을 사용하여 관리된다.
///     - `Search`, `conquer` 알고리즘, 미로 찾기 등, 역추적 기능에 스택을 사용한다.
public struct Stack<Element> {
    private var storage: [Element] = []
    
    /// 스택의 top에 요소 추가
    /// - Time Complexity: O(1)
    public mutating func push(_ element: Element) {
        storage.append(element)
    }
    
    /// 스택의 top 요소를 제거하며 반환
    /// - Time Complexity: O(1)
    @discardableResult
    public mutating func pop() -> Element? {
        storage.popLast()
    }
    
    /// 스택의 top 요소를 제거하지 않고 보기
    public func peek() -> Element? {
        storage.last
    }
    
    public var isEmpty: Bool {
        peek() == nil
    }
    
    public init() { }
    
    public init(_ elements: [Element]) {
        storage = elements
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

extension Stack: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Element...) {
        storage = elements
    }
}
