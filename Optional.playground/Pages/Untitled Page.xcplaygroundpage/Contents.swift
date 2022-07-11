//: [Previous](@previous)
import UIKit
import Foundation

func function(k: Int, i: Int) -> Int {
    guard k > 0 else { return -1 }
    guard i > 0 else { return -1 }
    
    var divider = 1
    var i1 = 0
    while i1 < i - 1 {
        divider *= 10
        i1 += 1
    }
    
    return k / divider % 10
}

let h1 = function(k: 21234, i: 1) // -> 4
let h2 = function(k: 21234, i: 2) // -> 3
let h3 = function(k: 21234, i: 3) // -> 2
let h4 = function(k: 21234, i: 4) // -> 1
let h5 = function(k: 21234, i: 5) // -> 2
let h6 = function(k: 21234, i: 6) // -> 0
let hMinus = function(k: 21234, i: -1) // -> -1
let h0 = function(k: 21234, i: 0) // -> -1

// k: 21234
// i: 1 цифра -> /1 % 10 -> 4
// i: 2 -> /10 % 10 -> 3
// i: 3 -> /100 % 10 -> 2
// i: 4 -> /1000 % 10 -> 1
// i: 5 -> /10000 % 10 -> 2
// i: n -> /10^(n-1) % 10 -> (n цифру)

//Цілій змінній d присвоїти першу цифру дрібної частини додатного дійсного числа x.
//func function2 (d: Int, x:Double) -> Int {
//    guard x > 0 else {return -1 }
//let x = 0,55555
//    return
//}
//function2(d: 0, x: 0.0)

print("function3  Визначити, чи дорівнює сума двох перших цифр заданого чотиризначного числа сумі двох останніх")

func function3 (d: Int) -> Bool {
    //Визначити, чи дорівнює сума двох перших цифр заданого чотиризначного числа сумі двох останніх.
    // 2 Визначити, чи дорівнює сума двох перших цифр заданого чотиризначного числа сумі двох останніх.

    guard d > 0  || d <= 9999 else {return (-1 != 0) }
    let x1 = d / 1000
    let x2 = d / 100 % 10
    let x3 = d / 10 % 10
    let x4 = d % 10
    let temp = x1 + x2
    let temp2 = x3 + x4
    
    if temp == temp2
    {
        print("доривнює")
    }
    else {
        print("не дорівнює")
    }
    return temp == temp2
}
function3(d: 1111)
function3(d: 1111)
print("function5 Визначите, чи є серед цифр заданого тризначного числа однакові")

func function5(z: Int) -> Bool {
    //Визначите, чи є серед цифр заданого тризначного числа однакові.
    
    guard z > 0 || z < 999 else {return false }

    var temp:Bool
    
    let x2 = z / 100 % 10
    let x3 = z / 10 % 10
    let x4 = z % 10
    
    if x2 == x3 {
        temp = x2 == x3
    }
    if x3 == x4 {
        temp = x3 == x4
    }
    else if x4 == x2 {
        temp = x4 == x2
    }
    else {
        temp = false
    }
    return temp
    
}
function5(z: 123)

print("function7 Дано два додатних цілих тризначних числа. Визначите, чи дорівнюють добутки їхніх цифр")

func function7() -> Bool {
    //    Дано два додатних цілих тризначних числа. Визначите, чи дорівнюють добутки їхніх цифр.
    var temp = 1
    var x = 333
    while x > 0  {
        temp *= x % 10
        
        x = x / 10
    }
    var temp2 = 1
    var x2 = 333
    while x2 > 0  {
        temp2 *= x2 % 10
        x2 = x2 / 10
    }
    print(temp2 == temp)
    return temp2 == temp
}
function7()

print("function8 Визначите, чи більше перша цифра додатного цілого тризначного числа за середнє арифметичне всіх його цифр.")

func function8 (x: Int) -> Bool {
    //    Визначите, чи більше перша цифра додатного цілого тризначного числа за середнє арифметичне всіх його цифр.
    guard x > 0 || x <= 999 else {return (-1 != 0)}
    
    
    var sum = x
    var temp = 0
    var value = 0
    while sum > 0 {
        temp += sum % 10
        sum = sum / 10
    }
    let temp2 = x / 100 % 10
    print(" Перша цифра: \(temp2)")
    value = temp / 3
    print("Середнє арифметичне: \(value)")
    print(temp2 > value)
    return temp2 > value
    
}
function8(x: 923)

print("function9 Надрукувати число, яке виходить при перестановці цифр сотень і одиниць заданого тризначного числа.")
func function9(value:Int) -> Int {
    //Надрукувати число, яке виходить при перестановці цифр сотень і одиниць заданого тризначного числа.
    guard value > 0 || value <= 999 else {return 0 }
    let x1 = value
    var x2 = 0
    var x3 = 0
    var x4 = 0
    
    x4 = x1 % 10
    x3 = x1 / 10 % 10
    x2 = x1 / 100 % 10
    print("Початкове число : \(value)")
    print(x4 * 100 + x3 * 10 + x2)
    return x4 * 100 + x3 * 10 + x2
}

function9(value: 1243)


print("function10 Визначите, чи є перша цифра додатного цілого чотиризначного числа більше за добуток його інших цифр.")
func function10(x: Int) -> Bool {
    // Визначите, чи є перша цифра додатного цілого чотиризначного числа більше за добуток його інших цифр.
    guard x > 0 || x <= 9999 else {return false}
    var sum = x / 1 % 1000
    var temp = 0
    var temp2 = 1
    
    while sum > 0 {
        print("sum: ->\(sum)")

        temp2 =  sum  % 10
        sum = sum / 10
        print("temp2: ->\(temp2)")
    }
    //    let temp3 = x / 100 % 10
    //    let temp4 = x / 10 % 10
    //    let temp5 = x / 1 % 10
    //
    //    sum = temp5 * temp4 * temp3
    //    print("THIS is your sum: \(sum)")
    
    temp = x / 1000 % 10
    print("Початкове число : \(x)")
    print("Перша цифра : \(temp)")
    print(temp > temp2)
    return temp > temp2
}
function10(x: 9321)

print("#################################")

func firstFractionDigit(x: Double) -> Int {
    let x1 = x * 10
    let intValue = Int(x1)
    print("intValue1: \(intValue)")
    print(" intValue2: \(intValue % 10)")
    print("x : \(x)")
    return intValue % 10
}

let result = firstFractionDigit(x: 123.123)

// Визначити, чи є задана цифра серед перших 8 цифер дрібної частини заданого дійсного числа.

func findDigitInFractionPart(number: Double, digit: Int, maxFractionPosition: Int = 8) -> Bool {
    var tmp = number

    var i = 0
    while i < maxFractionPosition {
        let firstDigit = firstFractionDigit(x: tmp)
        tmp *= 10

        if firstDigit == digit {
            return true
        }

        i += 1
    }

    return false
}

let found = findDigitInFractionPart(number: 123.4567005, digit: 5)

// Порахувати суму серед перших 8 цифер дрібної частини, які є більшими за задану фицру

func sumOfDigitsInFractionPartThatBiggerFrom(number: Double,
                                             biggerThanDigit: Int,
                                             maxFractionPosition: Int = 5) -> Int {
    var tmp = number
    var sum = 0

    var i = 0
    while i < maxFractionPosition {
        tmp *= 10
        let intValue = Int(tmp)
        let firstDigit = intValue % 10

        if firstDigit > biggerThanDigit {
            sum += firstDigit
            print("sum: \(sum)")
        }

        i += 1
    }

    return sum
}

let sumResult1 = sumOfDigitsInFractionPartThatBiggerFrom(number: 123.123456, biggerThanDigit: 4)
// i=0 -> 1231.23456 -> 1231 -> 1
// i=1 -> 12312.3456 -> 12312 -> 2
// i=2 -> 123123.456 -> 123123 -> 3
// i=3 -> 1231234.56 -> 1231234 -> 4
// i=4 -> 12312345.6 -> 12312345 -> 5
// i=5 -> will return sum as 5

let sumResult2 = sumOfDigitsInFractionPartThatBiggerFrom(number: 123.123456, biggerThanDigit: 5, maxFractionPosition: 6)
// i=0 -> 1231.23456 -> 1231 -> 1
// i=1 -> 12312.3456 -> 12312 -> 2
// i=2 -> 123123.456 -> 123123 -> 3
// i=3 -> 1231234.56 -> 1231234 -> 4
// i=4 -> 12312345.6 -> 12312345 -> 5 -> sum=5
// i=5 -> 123123456.0-> 123123456 -> 6 -> sum=11
// i=6 -> will return sum as 11


// Homework

// 1 Цілій змінній d присвоїти i (i >0) (як параметр) цифру дрібної частини додатного дійсного числа x.
// 2 Визначити, чи дорівнює сума двох перших цифр заданого чотиризначного числа сумі двох останніх.
// 3 Визначити, чи є цифра 0 серед i (i > 0) цифр дрібної частини заданого дійсного числа.
// 4 Визначите, чи є серед цифр заданого числа однакові.
// 5 Визначити суму перших n (n>0) цифр дрібної частини додатного дійсного числа x.
// 6 Дано два додатних цілих числа. Визначите, чи дорівнюють добутки їхніх цифр.
// 7 Визначите, чи більше перша цифра додатного цілого числа за середнє арифметичне всіх його цифр.
// 8 Визначте число, де цифри будуть поміняні порядок ззаду на перід. 123 -> 321
// 9 Визначите, чи є перша цифра додатного цілого числа більше за добуток його інших цифр.

print("@@@@@@@@@@@@")

func functionH1(d: Double, i: Int) -> Int {
    // 1 Цілій змінній d присвоїти i (i >0) (як параметр) цифру дрібної частини додатного дійсного числа x.

    guard i > 0 else { return 0 }

    var temp = d
    var loop = 0
    while i > loop {
        temp *= 10
        loop += 1
    }
    let intValue = Int(temp)
    let digit = intValue % 10
    return digit
}
 let d = functionH1(d: 321.567, i: 2)

func functionH2(number: Int) -> Bool {
    // 2 Визначити, чи дорівнює сума двох перших цифр заданого чотиризначного числа сумі двох останніх.

    guard number > 1000 else { return false }
    var temp = number
    var temp2 = 0
    let sum1 = number % 10 + number / 10 % 10
    var sum2 = 0
    while temp > 0 {
        
        temp2 = temp % 10
        if temp / 10 == 0 || temp / 100 == 0 {
            sum2 += temp2
        }
        temp /= 10
    }
    return sum1 == sum2
}
functionH2(number: 123456789)


func functionH3(number: Double,i: Int) -> Bool {
// 3 Визначити, чи є цифра 0 серед i (i>0) цифр дрібної частини заданого дійсного числа.
    guard i > 0 else { return false }
    var temp = number
    let constanta = 0
    var loop = 0
    var digit = 0

    while i > loop {
        print("temp: \(temp)")
        let intValue = Int(temp)
        digit = intValue % 10

        if digit == constanta {
            return digit == constanta
        }
        temp *= 10
        loop += 1
        print("digit: \(digit)")
    }
    return false
}
functionH3(number: 123.230321, i: 5)
print("#####################")

func functionH4(number: Int) -> Bool  {
    // 4 Визначите, чи є серед цифр заданого числа однакові.
    guard number > 0 else { return false }

    var temp = number
    let temp2 = number
    var loop = String(number).count
    var k = 100
    var m = 10
    var i = 0
    while  temp > 0 {
        let d = temp % 10
        temp /= 10
        while i < loop {
            let d2 = temp2 % k
            let s = d2 / m
            if (s == d) {
                return true
            }
            k *= 10
            m *= 10
            i += 1
        }
        loop -= 1
    }
    
    return false
}
functionH4(number: 12372)


func functionH5(number: Double, n: Int) -> Int {
    guard n > 0 else { return 0 }
    // 5 Визначити суму перших n (n>0) цифр дрібної частини додатного дійсного числа x.
    var sum = 0
    var temp = number
    var loop = 0
    
    while loop < n {
        temp *= 10
        let intValue = Int(temp)
        let firstDigit = intValue % 10
        sum += firstDigit
        print("sum: \(sum)")
        loop += 1
    }
    return sum
}
functionH5(number: 123.15134, n: 3)

func functionH6(fistNumber: Int, secondNumber: Int) -> Bool {
    // 6 Дано два додатних цілих числа. Визначите, чи дорівнюють добутки їхніх цифр.

    guard fistNumber > 0 else { return false }
    guard secondNumber > 0 else { return false }
    var temp = 1
    var x = fistNumber
    while x > 0  {
        let firstDigit = x % 10
        print("firstDigit: \(firstDigit)")
        temp *= firstDigit
        print("temp: \(temp)")

        
        x = x / 10
    }
    var temp2 = 1
    var x2 = secondNumber
    while x2 > 0  {
        temp2 *= x2 % 10
        print("temp2: \(temp2)")

        x2 = x2 / 10
    }
    print(temp2 == temp)
    return temp2 == temp
}
functionH6(fistNumber: 222, secondNumber: 222)


func functionH8(x: Int) -> Bool {
    // 7 Визначите, чи більше перша цифра додатного цілого числа за середнє арифметичне всіх його цифр.
    guard x > 0  else { return false }
//    let coutX = String(x).count
    var count = 0
    var temp = x
    var firstDigit = 0
    while temp > 0 {
         firstDigit = temp % 10
        count += 1
        temp = temp / 10
        print(" Перша цифра: \(firstDigit)")

    }
    let value = x / count
    print(firstDigit > value)
    return firstDigit > value
    
}
functionH8(x: 91234656)


//func functionH8(x: Int) -> Bool {
//    // 7 Визначите, чи більше перша цифра додатного цілого числа за середнє арифметичне всіх його цифр.
//    guard x > 0  else { return false }
////    let coutX = String(x).count
//    var count = 0
//    var temp = x
//    var sum = 0
//    while temp > 0 {
//        let firstDigit = temp % 10
//        sum += firstDigit
//        count += 1
//        temp = temp / 10
//    }
//    let temp2 = x / 1 % 100
//    print(" Перша цифра: \(temp2)")
//    let value = sum / count
//    print("Середнє арифметичне: \(value)")
//    print(temp2 > value)
//    return temp2 > value
//
//}
//functionH8(x: 123456789)
print("----------------------------")

func functionH8(number: Int) -> Int {
    // 8 Визначте число, де цифри будуть поміняні порядок ззаду на перід. 123 -> 321

    var temp = number
    var firstElement = 0
    var newNumber = 0

    while temp > 0 {
        print("temp1 : \(temp)")

        firstElement = temp % 10
        print("firstElement1: \(firstElement)")

        temp = temp / 10
        print("temp: \(temp)")

        newNumber = newNumber * 10 + firstElement
        print("firstElement2: \(firstElement)")
    }
    
    print("NewNumber: \(newNumber)")
    return 0
}
functionH8(number: 123456)


func functionH10(number: Int) -> Bool {
    // 9 Визначите, чи є перша цифра додатного цілого числа більше за добуток його інших цифр.
    
    guard number > 0  else { return false }
    
    var temp = number
    var firstElement = 0
    var temp2 = 1
    while temp > 0 {
        firstElement = temp % 10
        print("firstElement : \(firstElement)")

        temp = temp / 10
        print("temp : \(temp)")

        if temp  == 0 {
            print(firstElement > temp2)
        } else {
            temp2 *= firstElement
            print("temp2 : \(temp2)")
        }
    }
    return false
}
functionH10(number: 923)

print("#################")
