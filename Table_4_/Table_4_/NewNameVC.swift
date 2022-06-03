//
//  NewNameVC.swift
//  Table_4_
//
//  Created by admin on 27.05.2022.
//

import Foundation
import UIKit

protocol NewNameVCDelegate {
    func getName(name: String)
}

class NewNameVC: UIViewController {
    
    var myDelegate: NewNameVCDelegate!
    var name: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.createdTextFild()
        self.createdBarButton()
        self.printNameTextFild()
        
    }
    
    func createdTextFild() {
        let textFild = UITextField.init(frame: CGRect.init(x: 0, y: 0, width: self.view.frame.width * 0.5, height: 40))
        textFild.center = self.view.center
        textFild.tag = 1
        textFild.backgroundColor = .blue
        self.view.addSubview(textFild)
    }
    
    func createdBarButton() {
        let cancel = UIBarButtonItem.init(barButtonSystemItem: .cancel, target: self, action: #selector(cancelBack))
        navigationItem.leftBarButtonItem = cancel
        let save = UIBarButtonItem.init(barButtonSystemItem: .save, target: self, action: #selector(saveName))
        navigationItem.rightBarButtonItem = save
    }
    
    @objc func cancelBack() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc func saveName() {
        let textFild = self.view.viewWithTag(1) as! UITextField
        self.myDelegate.getName(name: textFild.text!)
        
        navigationController?.popViewController(animated: true)
    }
    
    func printNameTextFild() {
        let textFild = self.view.viewWithTag(1) as! UITextField
        if name != nil {
            print(name!)
        }else {
            print("not found name")
        }
        textFild.text = name

    }
    //модель данних
}
