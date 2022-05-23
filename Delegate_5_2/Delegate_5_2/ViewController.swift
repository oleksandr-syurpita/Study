//
//  ViewController.swift
//  Delegate_5_2
//
//  Created by admin on 12.05.2022.
//

import UIKit

class ViewController: UIViewController, AlertDelegate {
    func getText(text: String) {
        print(text)
        print("delegate")
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let aler = Alert.init(frame: .init(x: 0, y: 0, width: self.view.frame.width / 2 , height: self.view.frame.height / 2 ))
        aler.mydelegate = self
        self.view.addSubview(aler)
        
    }


}

