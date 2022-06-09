//
//  CarName.swift
//  Table_3
//
//  Created by admin on 26.05.2022.
//

import Foundation
import UIKit

protocol CarNameDelegate {
    func getName(name:String)
}

class CarName: ViewController {
    
    var mydelegate:CarNameDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .green
        self.createTextFild()
        self.setNavBar()
    }
    func setNavBar() {
        self.navigationItem.title = "Car Info"
        let  cancel = UIBarButtonItem.init(barButtonSystemItem: .cancel, target: self, action: #selector(setCancel))
        self.navigationItem.leftBarButtonItem = cancel
        let save = UIBarButtonItem.init(barButtonSystemItem: .save, target: self, action: #selector(setSave))
        self.navigationItem.rightBarButtonItem = save
    }
    
    @objc func setCancel() {
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func setSave() {
        let textFild = self.view.viewWithTag(1) as! UITextField
        self.mydelegate.getNameCar(name: textFild.text!)
        properties
        self.navigationController?.popViewController(animated: true)
    }
    func createTextFild() {
        
        let textFild = UITextField.init(frame: CGRect.init(x: 0, y: 0, width: self.view.frame.width * 0.8, height: 40))
        textFild.backgroundColor = .gray
        textFild.center = self.view.center
        textFild.tag = 1
        self.view.addSubview(textFild)
        
    }

    
}

    


