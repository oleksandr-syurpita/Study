//
//  ViewController.swift
//  Delegir
//
//  Created by admin on 05.05.2022.
//

import UIKit

class ViewController: UIViewController, CarDelegate {

    var check = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let tesla = Car.init()
        tesla.myDelegate = self
        tesla.frame = CGRect.init(x: 10, y: 100, width: 30, height: 100)
        tesla.backgroundColor = UIColor.blue
        tesla.name = "Tesla"
        self.view.addSubview(tesla)
        
        let bmw = Car.init()
        bmw.myDelegate = self
        bmw.frame = CGRect.init(x: 50, y: 100, width: 30, height: 100)
        bmw.backgroundColor = UIColor.red
        bmw.name = "BMW"
        self.view.addSubview(bmw)
        
        let jepp = Car.init()
        jepp.myDelegate = self
        jepp.frame = CGRect.init(x: 100, y: 100, width: 30, height: 100)
        jepp.backgroundColor = UIColor.black
        jepp.name = "Jepp"
        self.view.addSubview(jepp)
        
        tesla.move()
        bmw.move()
        jepp.move()
        
        let frame = CGRect.init(x: 150, y: 150, width: 100, height: 30)
        let a6 = Car.init(frame: frame)
        a6.myDelegate
        a6.backgroundColor = UIColor.yellow
        a6.nameX = "A6"
        self.view.addSubview(a6)
        a6.moveX()
    }

    func finish(name: String) {
        
        if check == false  {
         check = true
            print(name)
        }
    }
    func finishX(name: String) {
        
        if check == false  {
         check = true
            print(name)
        }
    }
    
    //Погратись з delegate збільшується в кінці вивисти кінець

}

