//: [Previous](@previous)

import Foundation

enum SomeEnum {
    case good(dectination: String)
    case bad(mind:String)
    case maybe(value:Int)
}

let someValue = SomeEnum.bad(mind: "your")

let good = SomeEnum.good(dectination: "Mind")
let maybe = SomeEnum.maybe(value: 23)

switch someValue {
case .bad:
    print("bad")
case .good:
    print("good")
case .maybe:
    print("maybe")
}

enum Planet: Int {
    case mercury
    case venus
    case mars
    case earth
    
}

let earth = Planet(rawValue: 4)


enum Phone:String {
    case Apple = "iphone 8"
    case Samsung = "Samsung 1002"
    case Nokia = "Nokia"
}
let apple = Phone.Apple
print(apple)
print(apple.rawValue )
