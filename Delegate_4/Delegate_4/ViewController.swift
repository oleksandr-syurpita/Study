//
//  ViewController.swift
//  Delegate_4
//
//  Created by admin on 09.05.2022.
//

import UIKit

class ViewController: UIViewController, AlertDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let alert = Alert.init(frame: .init(x: 0, y: 0, width: self.view.frame.size.width * 0.8 , height: self.view.frame.size.width * 0.4))
        self.view.addSubview(alert)
        
        alert.myDelegate = self
        
    }
    
    func getText(text: String) {
        print(text)
    }


}

