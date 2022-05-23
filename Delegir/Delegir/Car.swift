//
//  Car.swift
//  Delegir
//
//  Created by admin on 05.05.2022.
//

import Foundation
import UIKit

protocol CarDelegate {
    func finish(name: String)
    
}
protocol CarDelegaterX{
    func finishx(nameX :String)
}

class Car: UIView {
   
    var nameX = ""
    var myDelegateX: CarDelegaterX!
    
    var name = ""
    var myDelegate: CarDelegate!
    
    func move() {
        let duration = Double.random(in: 4 ... 7 )
        UIView.animate(withDuration: duration) {
            self.frame.origin.y = UIScreen.main.bounds.size.height - self.frame.size.height
            
        } completion: { _ in
            self.myDelegate.finish(name: self.name)
        }

    }
    func moveX() {
        let duration = Double.random(in: 4 ... 7 )
        UIView.animate(withDuration: duration){
            self.frame.origin.x = UIScreen.main.bounds.size.width - self.frame.size.width
        } completion:{ _ in
            self.myDelegateX.finishx(nameX: self.nameX)
        }
    }
}
