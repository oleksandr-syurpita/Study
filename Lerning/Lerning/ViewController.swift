//
//  ViewController.swift
//  Lerning
//
//  Created by admin on 27.04.2022.
//

import UIKit

class Car {
    var model = ""
    //конструктор
    init(model: String) {
        
        self.model = model
        
    }
     
    func move() {
        let speed = Int.random(in: 10 ..< 100)
        print("\(speed)  Speed is \(self.model)  ")
    }
    
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let bmw = Car.init(model: "BMW")
        let nesla = Car.init(model: "Nesla")
        let djep = Car.init(model: "Djep")
        bmw.move()
        nesla.move()
        djep.move()
    }


}

