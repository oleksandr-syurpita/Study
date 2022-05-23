//
//  CarInfo.swift
//  Table_3_
//
//  Created by admin on 23.05.2022.
//

import Foundation
import UIKit

protocol CarInfoDelegate {
    func getNameCar(name: String)
}

class CarInfo: UIViewController {
    
    var myDelegate: CarInfoDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.setNavBar()
        self.createTextFild()
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
        self.myDelegate.getNameCar(name: textFild.text!)
        
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
