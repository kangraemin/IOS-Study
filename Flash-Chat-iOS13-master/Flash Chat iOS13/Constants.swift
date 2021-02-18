//
//  Constants.swift
//  Flash Chat iOS13
//
//  Created by 강래민 on 2021/02/18.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

//struct K {
//    // type property
//    static let registerSegue = "RegisterToChat"
//    static let loginSegue = "LoginToChat"
//}

struct K {
    static let appName = "⚡️FlashChat"
    static let cellIdentifier = "ReusableCell"
    static let cellNibName = "MessageCell"
    static let registerSegue = "RegisterToChat"
    static let loginSegue = "LoginToChat"
    
    struct BrandColors {
        static let purple = "BrandPurple"
        static let lightPurple = "BrandLightPurple"
        static let blue = "BrandBlue"
        static let lighBlue = "BrandLightBlue"
    }
    
    struct FStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }
}

//struct MyStructure {
//    let instanceProperty = "a"
//    static let typeProperty = "b"
//
//    func instanceMethod() {
//
//    }
//    static func typeMethod() {
//
//    }
//}
//
//let myStructure = MyStructure()
//print(myStructure.instanceProperty)
//print(MyStructure.typeProperty)
