# 3. Swift Standard Library

## 3.1 Array

- 배열은 정렬된 요소의 컬렉션을 저장하기 위한 일반적인 목적의 제네릭한 컨테이너이다.
- `array` 리터럴을 사용하여 만들 수 있다.

~~~swift
let people = ["Brian", "Stanley", "Ringo"]
~~~

- Swift에서 프로토콜을 사용하여 배열을 정의한다.
    - Sequence: 배열을 한번 이상 반복할 수 있다.
    - Collection: 여러 번 순회할 수 있으며, 비파괴적이고, subscript 연산자로 접근할 수 있다.
    - RandomAccessCollection: 효율성을 보장한다.
- Swift의 배열은 어느 타입도 사용할 수 있는 제네릭 콜렉션이다.

### Order

- 배열의 요소들은 정렬돼있다.
- 배열의 모든 요소는 제로 베이스의 정수 인덱스를 가진다.

~~~swift
let people = ["Brian", "Stanley", "Ringo"]

people[0] // "Brian"
people[1] // "Stanley"
people[2] // "Ringo"
~~~

### Random-access

- 랜덤 엑세스는 데이터 구조가 constant 시간에 요소 검색을 처리할 수 있는 특성이다.
- `people`에서 `"Ringo"`를 가져오는 시간은 일정하다(constant)
- 배열의 어디나 엑세스할 수 있다는 의미. 링크드 리스트나 트리는 구조의 요소를 중간에서 바로 접근할 수 없다.

### Array performance

- `append`: 배열의 뒤에 요소 추가
- 배열의 크기에 상관없이 시간은 일정하다. (맨 뒤에 추가되므로)

~~~swift
people.append("Charles")
print(people) // prints ["Brian", "Stanley", "Ringo", "Charles"]
~~~

- `insert`: 배열의 원하는 인덱스에 요소 추가
- 해당 인덱스부터 뒤에 있는 요소가 모두 한칸씩 밀려나므로 시간이 걸린다

~~~swift
people.insert("Andy", at: 0)
// ["Andy", "Brian", "Stanley", "Ringo", "Charles"]
~~~



## Dictionary

- Key-Value 쌍을 요소로 갖는 콜렉션
- 정렬을 보장하지 않음
- `Key`는 `Hashable` 타입이어야 함 (Swift의 거의 모든 스탠다드 타입은 Hashable)

~~~swift
var scores: [String: Int] = ["Eric": 9, "Mark": 12, "Wayne": 1]

// 딕셔너리에 새로운 값 추가
scores["Andrew"] = 0

// 추가된 딕셔너리 (순서는 보장 않됨)
["Eric": 9, "Mark": 12, "Andrew": 0, "Wayne": 1]

~~~



## Set

- 고유한 값을 가지는 컨테이너

~~~swift
var bag: Set<String> = ["Candy", "Juice", "Gummy"]
bag.insert("Candy")
print(bag) // prints ["Candy", "Juice", "Gummy"]
~~~

- 고유한 값을 가지므로 콜렉션에서 중복 요소를 찾는 것 같은 기능에 사용된다.

~~~swift
let values: [String] = [...]
var bag: Set<String> = []
for value in values {
  if bag.contains(value) {
    // bag already has it, therefore it is a duplicate
  }
  bag.insert(value)
}
~~~