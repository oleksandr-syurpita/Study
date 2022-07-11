//: [Previous](@previous)

import Foundation

func functionTask_5_10(n:Int) -> Double {
    
    guard n > 0 else { return 0 }
    
    let y = 8 + n * 3 + n * 2 / 20
    return Double(y)
    //10 Розрахуйте y= 8+n3 +n2 /20, где n- довільне ціле число, що вводиться з клавіатури;

}
functionTask_5_10(n: 1)

func functionTask_5_9(n: Int) -> Double {
//    9 дивись прикріплений скріншот
    let y = 2 * sqrt( 2 * 2 + 1 ) / 3
    
    return Double(y)
}

functionTask_5_9(n: 2)

func functionTask_5_8(n: Int) -> Double {
    guard n > 0 else { return 0 }
//    8 Розрахуйте y=n3(n−1)(2n+1)/30, где n- довільне ціле число, що вводиться з клавіатури;
    
    let y = (n * 3 * (n - 1) * (2 * n + 1)) / 30
    return Double(y)
}

functionTask_5_8(n: 3)
func functionTask_5_7(n: Int) -> Double {
    guard n > 0 else { return 0 }
//    7 Розрахуйте y=n(n+1)(2n+1)(3n23n−1)/30, где n- довільне ціле число, що вводиться з клавіатури;
    
    let y = n * ( n + 1) * (2 * n + 1) * (3 * n * 23 * n - 1 ) / 30
    return Double(y)
}
functionTask_5_7(n: 3)

func functionTask_5_6(n: Int) -> Double {
//    6 Розрахуйте y=n2(2n2 −1)/5, где n- довільне ціле число, що вводиться з клавіатури;
    guard n > 0 else { return 0 }
    let y = n * 2 * (2 * n * 2 - 1 ) / 5
    
    return Double(y)
}

functionTask_5_6(n: 2)

func functionTask_5_5(n: Int) -> Double {
//    5 Розрахуйте y=n(4n2 −1)/3,где n-довільнецілечисло,щовводиться з клавіатури    guard n > 0 else { return 0 }
    
    let y = n * (4 * n * 2 - 1) / 3
    
    return Double(y)
}

functionTask_5_5(n: 2)


func functionTask_5_4(n: Int) -> Double {
//    4 Розрахуйте y=n2(n+1)2 /4,где n-довільнецілечисло,щовводиться з клавіатури;
    
    let y = ( n * 2 * ( n + 1 ) * 2) / 4
    
    return Double(y)
}

functionTask_5_4(n: 2)

func functionTask_5_3(n: Int) -> Double {
//    3. Розрахуйте y=n(n+1)(2n+1)/6, где n- довільне ціле число, що вводиться з клавіатури;
    let y = n * ( n + 1 ) * ( 2 * n + 1 ) / 6
    
    return Double(y)
}

functionTask_5_3(n: 2)

func functionTask_5_2(n: Int) -> Double {
//    2 Розрахуйте y=(2n+n)(n+1)/2, где n- довільне ціле число, що вводиться з клавіатури;
    let y = ( 2 * n + n ) * ( n + 1 ) / 2
    
    return Double(y)
}

functionTask_5_2(n: 2)

func functionTask_5_1(n: Int) -> Double {
//    1 Розрахуйте y = n(n + 1) / 2 , где n - довільне ціле число, що вводиться з клавіатури;
    let y = n * (n + 1) / 2
    
    return Double(y)
}

functionTask_5_1(n: 2)
