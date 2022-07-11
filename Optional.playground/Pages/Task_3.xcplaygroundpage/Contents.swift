//: [Previous](@previous)

import Foundation

//              1 Цілій змінній d присвоїти i (i > 0) (як параметр) цифру дрібної частини додатного дійсного числа x.

func functionTask1(d: Double, i: Int) -> Int {
    guard i > 0 else { return 0 }
    var number = d
    var loop = 0
    
    while i > loop {
        
        number *= 10
        
        print("number: \(number)")
        loop += 1
        
    }
    let temp = Int(number)
    print("temp: \(temp)")

    
    return temp
}
functionTask1(d: 123.456789, i: 4)

func howManyNumber(number: Int) -> Int {
    guard number > 0 else { return 0 }
    let countNumber = String(number).count
    
    
    return countNumber
    
}
 let  b = howManyNumber(number: 12345678)

func functionTask2(b: Double, i: Int) -> Int {
    guard i > 0 else { return 0 }
    var number = b
    var loop = 0
    print("number1: \(number)")

    while i > loop {
        number = number / 10
        print("number2: \(number)")
        loop += 1
    }
    
    let temp2 = Int(number)
    print("temp2: \(temp2)")

    return temp2
}
functionTask2(b: 123456.789, i: 4)

func functionTask3(b: Double, i: Int) -> Int{
    
    return 0
}
functionTask3(b: 123.456789, i: 4)

//Calculate sum: 1 + 2 + 3 + 4 + 5 + 6 + 7+ ..., where n is count of numbers
//Вычислить сумму: 1 + 2 + 3 + 4 + 5 + 6 + 7+ ..., где n - количество чисел
func functionTask3_1(i: Int) ->Int {
    guard i > 0 else { return 0 }
    
    var loop = 0
    var sum = 0
    var number = 0

    while i > loop {
        print("number: \(number)")
        number += 1

        sum += number
        print("sum: \(sum)")
        
        loop += 1

    }
    
    return sum
    
}
functionTask3_1(i: 3)

print("##################")
func functionTask_3_2(n: Int,i: Int) -> Int {
    
    //Calculate sum: 1 + 3 + 5 + 7 + ..., where n is count of numbers
    guard n > 0 else { return 0 }
    guard i > 0 else { return 0 }
    var loop = 0
    var sum = 0
    var  number = 1
    print("Start: \(number)")

    while i > loop {
        sum +=  number
        print("sum: \(sum)")
        
        number += n
        print("number: \(number)")
        
        loop += 1
    }
    
    return sum
    
}
functionTask_3_2(n: 2, i:4)

func functionTask_3_3(n: Int, i: Int) -> Int {
//    Calculate sum: 5 - 4 - 3 - 2 - 1 - 0 - (-1) - (-2) - ... , where n is count of numbers
    var loop = 0
    var number = n

    while i > loop {
        print("number: \(number)")
        number -= 1
        loop += 1
    }
    return number
}
functionTask_3_3(n: 4, i: 10)

print("#############")
func functionTask_3_4(n: Int) -> Int {
//    Calculate sum: 100 - 95 - 90 - 85 - ... , where n is count of numbers
    guard n > 0 else { return 0 }
    var number = 100
    let constant = 5
    let temp = n
    var loop = 0
    print("number: \(number)")
    while temp > loop {
        number -= constant
        print("number: \(number)")
        
        loop += 1
    }
    return number
}
functionTask_3_4(n: 5)

print("%%%%%%%%%%")
func sumArithmeticProgression(start: Int, step: Int, n: Int) -> Int {
    
    var loop = 0
    var sum = 0
    var  number = start
    print("Start: \(number)")

    while n > loop {


        sum +=  number
        print("sum: \(sum)")
        
        number += step
        print("number: \(number)")
        
        loop += 1
    }
    
    return sum
}
sumArithmeticProgression(start: 100, step: 2, n: 5)
//Write function: `func sumArithmeticProgression(start: Int, step: Int, n: Int) -> Int`, where start is the start number, step is the difference between two near numbers, n is count of numbers. Function should return its sum.



