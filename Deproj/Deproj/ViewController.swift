//
//  ViewController.swift
//  Deproj
//
//  Created by admin on 09.05.2022.
//

import UIKit

class ViewController: UIViewController, CarDelegate {
   
    
    
    
  var  check = false

    override func viewDidLoad() {
        super.viewDidLoad()
         
        var bmw = UIView.init()
        bmw.frame = CGRect.init(x: 30, y: 10, width: 30, height: 100)
        bmw.backgroundColor = UIColor.red
        self.view.addSubview(bmw)
        
        let audi = UIView.init()
        bmw.frame = CGRect.init(x: 30, y: 10, width: 30, height: 100)
        bmw.backgroundColor = UIColor.red
        self.view.addSubview(audi)

        let jeep = UIView.init()
        jeep.frame = CGRect.init(x: 30, y: 10, width: 30, height: 100)
        jeep.backgroundColor = UIColor.red
        self.view.addSubview(jeep)

        
        bmw = Car
      
        
        
        
         
        
        
    }
    func finish(name: String) {
        if (check == false) {
            check = true
            print("win\(name)")
        }
    }
    func finishx(nameX: String) {
        if (check == false) {
            check = true
            print("win \(nameX)")
    }


}
}
