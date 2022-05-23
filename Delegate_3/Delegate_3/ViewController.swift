//
//  ViewController.swift
//  Delegate_3
//
//  Created by admin on 09.05.2022.
//

import UIKit

class ViewController: UIViewController, SecondVCDelegat {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let frame = CGRect.init(x: 100, y: 100, width: 100, height: 50)
        let button = UIButton.init(frame: frame)
        button.backgroundColor = UIColor.black
        button.setTitle("Click me", for: .normal)
        self.view.addSubview(button)
        
        button.addTarget(self, action: #selector(action), for: .touchUpInside)
        
        
    }
    
    @objc func action() {
        
        let secendVC = SecondVC.init()
        secendVC.modalPresentationStyle = .fullScreen
        secendVC.myDelegat = self
        self.present(secendVC, animated: true)
        
        
    }
    
    func getColor(color: UIColor) {
        self.view.backgroundColor = color
        print(color)
        
    }
    
    func getText(text: String) {
        print(text)
    }

}

