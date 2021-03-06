protocol CanFly {
    func fly() // Can't have implementation part
}

class Bird {
    
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("The bird makes a new bird in a shell.")
        }
    }
    
//    func fly() {
//        print("The bird flaps its wings and lifts off into the sky.")
//    }
}

class Eagle: Bird, CanFly {
    
    func fly() {
        print("The eagle flaps its wings and lifts off into the sky.")
    }
    
    func soar() {
        print("The eagle lides in the air using air currents.")
    }
}

class Penguin: Bird {
    func swim() {
        print("The penguin paddles through the water")
    }
}

class FlyingMusseum {
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
}

//struct Airplane {
//
//}
//
//struct Airplane: Bird {
//
//}

struct Airplane: CanFly { // Very weird
    func fly() {
        print("The airplane uses its engine to lift off into the air.")
    }
}

let myEagle = Eagle()
myEagle.fly()
myEagle.layEgg()
myEagle.soar()

let myPenguin = Penguin()
myPenguin.swim()
myPenguin.layEgg()
//myPenguin.fly() // Problem !! But penguin can't fly

let musium = FlyingMusseum()
//musium.flyingDemo(flyingObject: myPenguin)

let myAirplain = Airplane()
//myAirplain.layEgg() // Veeeeerrrrrryy weird
musium.flyingDemo(flyingObject: myAirplain)
// Remember inheritance is only can be done for class not struct
