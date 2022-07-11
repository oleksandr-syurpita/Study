//: [Previous](@previous)

import Foundation

var someValue = 100
var value: Int
value = 2

switch value  {
case 0:
    setVolumeTo (value: 0)
    print("mute")
case 1:
    setVolumeTo (value: 25)
    print("25 value")

case 2:
    setVolumeTo (value: 50)
    print("Half value")

case 3:
    setVolumeTo (value: 100)
    print("Max value")

default:
    print("Nothing")
}
func setVolumeTo(value: Int) {
    someValue = value
    print(value)

}

let someValue2:String = "adsad"
switch someValue2 {
case "das":
    print("case 0: \(someValue2)")
case "qeq":
    print("case 1: \(someValue2)")
case "adsad":
    print("case 2: \(someValue2)")
case "sd":
    print("case 3: \(someValue2)")
default:
    print("Nothing")
}

let level = 1
switch level {
case 1,2,3:
    print("lol level")
case 4,5:
    print("midle level")
case 6,7,8:
    print("hard level")
default:
    print("Other level")
}
