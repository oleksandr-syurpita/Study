//
//  ViewController.swift
//  deleget_5_4
//
//  Created by admin on 14.05.2022.
//

import UIKit

class ViewController: UIViewController, AlertDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let alert = Alert.init(frame: CGRect.init(x: 0, y: 0, width: self.view.frame.size.width * 0.7, height: self.view.frame.size.height * 0.8))
        alert.tag = 2
        alert.myDelegated = self
        
        let button = UIButton.init(frame: CGRect.init(x: 10, y: 20, width: self.view.frame.width * 0.1, height: self.view.frame.height * 0.10))
        button.backgroundColor = UIColor.blue
        self.view.addSubview(button)
        button.addTarget(self, action: #selector(actionButton), for: .touchUpInside)
        self.view.addSubview(alert)
    }
    @objc func actionButton() {
        
        
        
        print("ok_3")
    }
    func getword(text: String) {
        print(text)
    }


}

