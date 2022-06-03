//
//  CarInfo.swift
//  Table_4_3
//
//  Created by admin on 02.06.2022.
//

import Foundation
import UIKit
 
protocol CarInfoDelegate {
    
    func getName(nameCar: String)
}
class CarInfo:UIViewController {
    
    var mydelegate: CarInfoDelegate!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .lightGray
        self.textFild()
        self.navigationBarItems()
    }
    
    func textFild() {
        let textFild = UITextField.init(frame: CGRect.init(x: 0, y: 0, width: 100, height: 40))
        textFild.center = self.view.center
        textFild.tag = 1
        textFild.backgroundColor = .white
        textFild.textColor = .black
        self.view.addSubview(textFild)
    }
    
    func navigationBarItems() {
        let save = UIBarButtonItem.init(barButtonSystemItem: .save, target: self, action: #selector(saveText))
        navigationItem.rightBarButtonItem = save
        
        let cancel = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(cancelView))
        navigationItem.leftBarButtonItem = cancel
    }
    
    @objc func saveText() {
        let textFild  = self.view.viewWithTag(1) as! UITextField
        self.mydelegate.getName(nameCar: textFild.text!)
        navigationController?.popViewController(animated: true)
    }
    
    @objc func cancelView() {
        navigationController?.popViewController(animated: true)
    }
}
