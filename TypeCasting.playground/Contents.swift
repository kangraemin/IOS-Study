import Foundation

class Animal {
    var name: String
    
    init(n: String) {
        name = n
    }
}

class Human: Animal {
    func code() {
        print("Typing away...")
    }
}

class Fish: Animal {
    func breatheUnderWater() {
        print("Breathing under water.")
    }
}

struct FishStruct {
    func breatheUnderWater() {
        print("Breathing under water.")
    }
}

let angela = Human(n: "Angela Yu")
let jack = Human(n: "Jack Bauer")
let nemo = Fish(n: "Nemo")
let nemoStruct = FishStruct()
let number: NSNumber = 12
let word: NSString = "abc"

// 세 객체가 모두 같은 부모 클래스를 상속 받고 있기 때문에, 한 리스트에 담아 두는것이 가능하다.
// Animal의 list로 인식 됨
//let neighbours = [angela, jack, nemo, nemoStruct] // Compile error by nemoStruct ( Heterogeneous collection literal could only be inferred to '[Any]'; add explicit type annotation if this is intentional )
let neighbours = [angela, jack, nemo] // no error
//let neighboursTest = [angela, jack, nemo, number, word] // Compile error ( Heterogeneous collection literal could only be inferred to '[Any]'; add explicit type annotation if this is intentional )
let NSCollection = [number, word] // no error 

// Animal의 객체로 인식됨
let neighbour1 = neighbours[0]

let myDouble = 0.0
let myDoubleAsInt = Int(myDouble)

// is -> Type checking
if neighbour1 is Human { // angela 로 바꾸면 불확실성이 없어지기 떄문에 warning을 띄움
    print("First Neighbour is a Human")
}

// as! -> We want to trun in into a subclass ( Forced down cast )
func findNemo(from animals: [Animal]) {
    for animal in animals {
        if animal is Fish {
            print(animal.name)
//            animal.breatheUnderWater() // compile error
            let fish = animal as! Fish
            fish.breatheUnderWater()
            // as -> used to raise a object to its superclasses type -> superclass로 변환시 절대 실패하지 않기 때문에 ! ? 필요 없음 ( upcast )
            let animalFish = fish as Animal
//            animalFish.breatheUnderWater() // compile error
        }
    }
}

findNemo(from: neighbours)

// as? -> slightly safer way of performing this downcasting
//let fish = neighbours[1] as! Fish // runtime error
let fish = neighbours[1] as? Fish // no error

if let fish = neighbours[1] as? Fish {
    fish.breatheUnderWater() // being skiped
} else {
    print("Casting has failed")
}

let num = 12
//let neighboursTest = [angela, jack, nemo, num] // compile error
let neighboursTest: [Any] = [angela, jack, nemo, num] // no error
//let neighboursTest: [AnyObject] = [angela, jack, nemo, num] // compile error


