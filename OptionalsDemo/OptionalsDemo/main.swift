
let myOptional: String?

//myOptional = "Angela"
myOptional = nil

// 1. ! ( exclamation mark )
let text: String = myOptional!

// 2. If statement
if myOptional != nil {
    let text: String = myOptional!
    let text2: String = myOptional
} else {
    print("myOptional was found to be nil")
    let text: String = "myOptional was found to be nil"
}

// 3. Optional Binding
if let safeOptional = myOptional { // safeOptional => string , myOptional -> String?
    let text: String = safeOptional
    let text2: String = safeOptional
} else {
    print("myOptional was found to be nil")
}

// 4. Nil Coalescing Operator ( optionalValue ?? defaultValue )
let text: String = myOptional ?? "I am the default value"
print(text)

// 5.
struct MyOptionalStruct {
    var property = 123
    func method() {
        print("I am the struct's method")
    }
}

// Optional Chanining
let myOptionalStruct: MyOptionalStruct?

//myOptionalStruct = MyOptionalStruct()
myOptionalStruct = nil

print(myOptionalStruct?.property ?? 44)
myOptionalStruct?.method()
