import UIKit

var text: String? = "some string"
//var text: String? = nil

// 1 Принудительно(forced) не є безпечним

//var newText: String = text!

// 2 Неявно(imolicitly) без типу не безпечно

//var newText2 = text!

// 3 Опциональне Прив'язування (binding) безпечний

if let newText3 = text {
    print(newText3)
}else {
    print("not Value")
}

// 4 Опціональна цепочка (chaining) - безпечний спосіб

let newText4 = text?.uppercased()
print(newText4 as Any)

// 5 Значення по умолчанню безпечно

var newText5 = text ?? "newText5"
print("This is 5:  \(newText5)")

// 6 Guard let - безпечно
func guardtest() {
    guard let newText6 = text else {
        return
    }
    print(newText6 as Any)
}
  
guardtest()


// 7  Опциональний паттерн
if case let newText7? = text {
    print("This is 7:  \(newText7)")
}

func gurdTest2(x:Int?,y:Int?) {
    guard let x1 = x else {return}
    guard let y1 = y else {return}
    let z = x1 * y1
    print(z)
}

//func gurdTest2(x:Int?,y:Int?) -> Bool {
//
//    guard let z = x == y else {return}
//    print(z)
//}
gurdTest2(x: 4, y: 4)

//  MARK
enum Color{
    case blue
    case green
}
var color:Color = .blue
if case .blue = color{
    print("ok")
}
