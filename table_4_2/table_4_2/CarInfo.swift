//
//  CarInfo.swift
//  table_4_2
//
//  Created by admin on 02.06.2022.
//

import Foundation
import UIKit

protocol CarInfoDelegate {
    func getNameCar(nameCar: String)
}

class CarInfo:UIViewController {
    
    var mydelegate: CarInfoDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .lightGray
        self.createdTextFild()
        self.createdNavigationBar()
    }
    
    func createdTextFild() {
        let textFild = UITextField.init(frame: CGRect.init(x: 0, y: 0, width: 100, height: 40))
        
        textFild.backgroundColor = UIColor.white
        textFild.textColor = UIColor.black
        textFild.center = self.view.center
        textFild.tag = 1
        self.view.addSubview(textFild)
    }
    
    func createdNavigationBar() {
        let save = UIBarButtonItem.init(barButtonSystemItem: .save, target: self, action: #selector(actionSaveButton))
        navigationItem.rightBarButtonItem = save
        
        let cancel = UIBarButtonItem.init(barButtonSystemItem: .cancel, target: self, action: #selector(actionCancelButton))
        navigationItem.leftBarButtonItem = cancel
    }
    
    @objc func actionCancelButton() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc func actionSaveButton() {
        let textFild = self.view.viewWithTag(1) as! UITextField
        self.mydelegate.getNameCar(nameCar: textFild.text!)
        
        navigationController?.popViewController(animated: true)
        
    }
}
