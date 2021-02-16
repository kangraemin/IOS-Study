let fruits = ["Apple", "Pear", "Orange"]
let fruitSet: Set = ["Apple", "Pear", "Orange"]
let fruitArray: Array = ["Apple", "Pear", "Orange"]
let contacts = ["Adam": 123456789, "James": 987654321, "Amy":1234509876]
let word = "supercalifragilisticexpialidocious"
let halfOpenRange = 1..<5
let closedRange = 1...5

print("----")
for fruit in fruits {
    print(fruit)
}

print("----")
for fruit in fruitSet {
    print(fruit)
}

print("----")
for fruit in fruitArray {
    print(fruit)
}

print("----")
for person in contacts {
    print(person.value)
}

print("----")
for letter in word {
    print(letter)
}

print("----")
for number in halfOpenRange {
    print(number)
}

print("----")
for number in closedRange {
    print(number)
}

print("----")
for _ in halfOpenRange {
    print("Loop is running")
}
