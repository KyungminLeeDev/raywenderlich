// Copyright (c) 2021 Razeware LLC
// For full license & permission details, see LICENSE.markdown.

example(of: "스택 사용") {
    var stack = Stack<Int>()
    stack.push(1)
    stack.push(2)
    stack.push(3)
    stack.push(4)
    
    print(stack)
    
    if let poppedElement = stack.pop() {
        assert(4 == poppedElement)
        print("Popped: \(poppedElement)")
    }
}

example(of: "배열로 스택 초기화") {
    let array = ["A", "B", "C", "D"]
    var stack = Stack(array)
    print(stack)
    
    if let poppedElement = stack.pop() {
        print("Popped: \(poppedElement)")
    }
}

example(of: "배열 리터럴로 스택 초기화") {
    var stack: Stack = [1.0, 2.0, 3.0, 4.0]
    print(stack)
    
    if let poppedElement = stack.pop() {
        print("Popped: \(poppedElement)")
    }
}
