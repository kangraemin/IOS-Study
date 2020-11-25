// calculator function에 input으로 함수를 넣고 싶다.
//func calculator (n1: Int, n2: Int) -> Int {
//    return n1 * n2
//}

// operation이라는 함수는 (Int,Int)를 인자로 받고 Int를 리턴하는 함수이다.
func calculator (n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(n1, n2)
}

//func add (no1: Int, no2: Int) -> Int {
//    return no1 + no2
//}
//
//func multiply (no1: Int, no2: Int) -> Int {
//    return no1 * no2
//}
//
//print(calculator(n1: 2, n2: 3, operation: add))
//print(calculator(n1: 2, n2: 3, operation: multiply))
func multiply (no1: Int, no2: Int) -> Int {
    return no1 * no2
}

print(calculator(n1: 2, n2: 3, operation: multiply))
// 재사용 불가능한 함수를 만들고 싶지 않다 -> closures를 사용한다.
calculator(n1: 2, n2: 3, operation: {(no1: Int, no2: Int) -> Int in return no1 * no2})
// Use type inference ( remove types, return statement )
calculator(n1: 2, n2: 3, operation: {(no1, no2) in no1 * no2})
// Use Swift dollar sign ( $0 -> first params, $1 -> second params )
calculator(n1: 2, n2: 3, operation: {$0 * $1})
// Use swift rule whereby if the last parameter in your function is a closure,
// i.e., everything between the open and closing curly braces
// You can omit last paramter name and you can close the input section -> trailing closure
// It may produce readability confusing -> 내 선택에 맡김 알아서 하라
let result = calculator(n1: 2, n2: 3) {$0 * $1}
print(result)

let array = [6,2,3,9,4,1]

func addOne(n1: Int) -> Int {
    return n1 + 1
}

print(array.map(addOne)) // [7,3,4,10,5,2]
print(array.map({$0 + 1})) // [7,3,4,10,5,2]
print(array.map{$0 + 1}) // [7,3,4,10,5,2]

let newArray = array.map{"\($0)"}
print(newArray) // ["6", "2", "3", "9", "4", "1"]

// { (paramters) -> return type in statement } -> closure의 기본 형태
