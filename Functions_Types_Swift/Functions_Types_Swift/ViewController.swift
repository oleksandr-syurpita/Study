//
//  ViewController.swift
//  Functions_Types_Swift
//
//  Created by admin on 04.05.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Closures

        let names = ["Kostia","Andria","Sasha","Oleg","Katay","valera"]
        let s = names.sorted()
       print(s)

        let t1 = names.sorted { (s1 : String,s2 : String) in
            return s1 < s2
            
        }
        print(t1)
        
        let t2 = names.sorted { (s1 : String, s2: String)  in
            s1 < s2
        }
        print(t2)
          
//-----------------------------------------------------------------------
        let shops:[String:Double] = ["Shop1":20000,"Shop2":1000,"Shop3":12000,"Shop4":14500]
        func filterShops(shops:[String:Double],filter:(Double)->Bool)->[String:Double]{
            var filteredShop = [String:Double]()
            for (key,value) in shops{
                if filter(value){
                    filteredShop[key] = value
                }
            }
            return filteredShop
        }
//        func lowProfit(p:Double)->Bool{
//            if p < 14000{
//                return true
//            }
//            return false
//        }
        func goodProfit(p:Double)->Bool{
            if p > 14000{
                return true
            }
            return false
        }
        //Closures
        let shopsLowProfit = filterShops(shops: shops, filter: {(p:Double)->Bool in
            if p < 14000{
                return true
            }
            return false
        })
        //Not Closures
        let shopsGoodProfit = filterShops(shops: shops, filter: goodProfit)
        print(shopsGoodProfit , "Good Profit")
        print(shopsLowProfit , "Bad Profit")
         
        
        
//        Enum
        enum Typedevice {
            case laptop(mark:MarkLaptop)
            case desktopComputer
            case table
            case smartWatch
        }
        enum MarkLaptop:String{
            case apple = "apple"
            case acer = "acer"
            case hp = "hp"
        }
        let laptopAcer = MarkLaptop(rawValue: "acer")
        print(laptopAcer?.rawValue)
        
        let device:Typedevice = .laptop(mark: .hp)
        switch device {
        case .laptop(mark: let markLaptop) where markLaptop == .apple:
            print("markLaptop \(markLaptop.rawValue)")
        case .laptop(mark: let markLaptop) where markLaptop == .hp:
            print("laptop  \(markLaptop.rawValue)")
        case .laptop(let mark):
            print("Laptop \(mark.rawValue)")
        case .desktopComputer:
            print("desktop")
        case .table:
            print("table")
        case .smartWatch:
            print("smartWatch")
            
        }
    }


}

