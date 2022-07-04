//: [Previous](@previous)

import Foundation

import UIKit
import Darwin
//
func calc(x: Float?, y: Float) {
    guard let x1 = x else {return}
    guard y != 0 else {return}
    guard x1 > 5 else {return}
    let z = x1 / y
    print(z)
    
}
calc(x: 10, y: 5)

func calcs(x: Float?, y: Float) {
    
    guard let x1 = x else {return}
    guard y != 0 else {return}
    guard x1 > 5 else {return}
    let z = x1 / y
    print(z)
}
calcs(x: 100, y: 2)

func test(a: Int?) -> Int? {
    
    guard let b = a else {return nil}
    return b * 5
}
test(a: 5)
func tests(a: Int?) -> Int? {
    
    guard let b = a else {return nil}
    return b * 5
    
}
tests(a: 2)
func cal(x: Float?, y: Float) {
    guard let z = x else {return}
    guard y != 0 else{return}
    guard z > 5 else{return}
    let a = z * y
    print(a)
    
}
cal(x: 10, y: 2)

/* -Завдання хоум написати функцію яка поверне суму двох значень, або значення параметру, якщо інший параметр nil, якщо 2 nil то повернути nil
 -1. використовувати if, a,b != nil
 -2. if a,b == nil, else
 -3. if let b == a
 -4. guart leb b = a
 - Значення те саме просто різні способи !
 
 - До функції нижче добавити 3 способи які вказані вище
 */

func function1(a: Int?, b: Int?) -> Int? {
    
    if a != nil {
        if b !=  nil {
            return a! + b!
        }
         else {
            return a
        }
    }
    else if b != nil {
        return b
    }
    return nil
}

function1(a: nil, b: nil)

func function2(a: Int?, b: Int?) -> Int? {

//    if a == nil || b == nil {
//        return nil
//    }
//    else {
//        return a! + b!
//    }

//    if a == nil {
//        return a
//    }
//    else {
//        return a! + b!
//    }
//    if b == nil {
//        return nil
//    }
//    else {
//        return a! + b!
//    }

    if b == nil {
        if a == nil {
            return b
        }
        else {
            return a
        }
    }
    if a == nil {
        if b == nil {
            return a
        }
        else {
            return b
        }
    }
    return a! + b!
}

function2(a: 2, b: 2)

//func function3(a: Int?, b: Int?) -> Int? {
//    if let b == a  {
//        return a! + b!
//    }
//    return nil
//}

//-3. if let b == a

func function3(a: Int?, b: Int?) -> Int? {
    var value = 0
    if let a1 = a {
        if let b1 = b {
            if b1 == a1 {
                value = a1 + b1
            }
            else {
                return b1
            }
        }
        else {
            return a1
        }
    }
    
    if let b1 = b {
        if let a1 = a {
            if a1 == b1 {
                value = b1 + a1
            }
            else {
                return a1
            }
        }
        else {
            return b1
        }
    }
    return value

}
function3(a: 4, b: nil)

//-4. guart let b1 * a1
func function4(a: Int?, b: Int?) -> Int? {
    guard  let a1 = a else {return nil}
    guard  let b1 = b else {return nil}
    
    return b1 * a1

}
//guard let newText6 = text else {
//    return
//}
//print(newText6 as Any)
//}

function4(a: 5, b: 5)

func function(a: Int?, b: Int?) -> Int? {
    
    guard let a1 = a else {return nil}
    guard let b1 = b else {return nil}
    let z1 = a1 * b1
    
    return z1
}

func functions(a: Int?, b: Int?) -> Int? {
    
    var z1 = 0

    if a != nil || b != nil {
        guard let a1 = a else {return nil}
        guard let b1 = b else {return nil}
         z1 = a1 * b1
        print(z1)
    }
    return z1
    
}
func functionc(a: Int?, b: Int?) -> Int? {
     
//    if  a == nil {return nil}
//    else{
//        guard let a1 = a else {return nil}
//        print(a1)
//    }
//    return a
    
    var z1 = 0

    if a == nil || b == nil {
        return nil
    }
    else{
        guard let a1 = a else {return nil}
        guard let b1 = b else {return nil}
         z1 = a1 * b1
        print(z1)
    }
    return z1
    
}
func functionb(a: Int?, b: Int?) -> Int? {
    if a == b {
        print(a as Any)
        
    }
    else {
        return nil
    }
    return a
}
func functiona(a: Int?, b: Int?) -> Int? {
    guard let a1 = a else {return nil}
    guard let b2 = b else {return nil}
    if a1 == b2 {
        print("the same")
    }
    else {
        print("not same")
    }
   
    return a1 * b2
    
}
function(a: 10, b: 10)
functions(a: 10, b: 3)
functionc(a: 23, b: 3)
functionb(a: 3, b: 3)
functiona(a: 3, b: 3)

//

// func (a: Int?,b: Int?) -> Bool
// Написати функцію порівняння 2 значень, якщо 2 значення однакові = true всі інакші значення false

func funcBool(a: Int?,b: Int?) -> Bool {
    guard let a1 = a else {return false}
    guard let b1 = b else {return false}
    
    if a1 == b1 {
        return true
    }
    else {
        return false
    }
}
funcBool(a: 3, b: 3)

// func ([Int], Int?) -> [Int]
// Кожен елемент перемножити на 2 параментр якшо не ніл
func funcArray( array: [Int],number: Int?) -> [Int] {

    return array
}
funcArray(array: [1,2,3,4,5,6,7,8,9], number: 2)
//Ось зе маєш завдання -
//Ніхто не любить платити податки, але ми зобов’язані!
//Ставка податку залежить від розміру твого доходу:
//до 1000 грн включно - податок 2%;
//від 1000 грн до 10000 грн включно - податок 3%;
//все, що більше 10000 грн - податок 5%;
//Напиши функцію calculateTaxes, яка приймає ціле число income (твій дохід) та повертає податок, який ти заплатиш.


func calculateTaxes(cash:Int?) -> Double? {
    guard let money = cash else {return nil}
    var tax = 0.00
    
    if money <= 1000 {
        tax =  (2 * Double(money)) / 100
        print("Tax : \(tax)")
    }
    else if money <= 10000  {
        
        tax =  (3 * Double(money)) / 100
        print("Tax : \(tax)")

    }
     else if money > 10000 {
        
        tax =  (5 * Double(money)) / 100
         print("Tax : \(tax)")

    }
    else {
        print("not ok")
    }
    return tax
}
calculateTaxes(cash: 1001)
