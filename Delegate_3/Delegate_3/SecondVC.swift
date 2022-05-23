//
//  SecondVC.swift
//  Delegate_3
//
//  Created by admin on 09.05.2022.
//

import Foundation
import UIKit

protocol SecondVCDelegat {
    func getColor(color: UIColor)
    func getText(text: String)
}

class SecondVC: UIViewController {
    
    var myDelegat: SecondVCDelegat!

    let textField = UITextField.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.blue
        
        
        let frame = CGRect.init(x: 100, y: 100, width: 30, height: 50)

        let button = UIButton.init(frame: frame)
        button.backgroundColor = UIColor.red
        button.setTitle("OK", for: .normal)
        self.view.addSubview(button)
        button.addTarget(self, action: #selector(action), for: .touchUpInside)
        
        self.textField.frame = CGRect.init(x: 50, y: 200, width: 200, height: 50)
        self.textField.placeholder = "Some Text"
        self.textField.backgroundColor = UIColor.white
        self.view.addSubview(self.textField)
    }
    
    @objc func action() {
        self.myDelegat.getText(text: self.textField.text!)
        self.myDelegat.getColor(color: self.view.backgroundColor!)
        
        self.dismiss(animated: true)
        
    }
}
