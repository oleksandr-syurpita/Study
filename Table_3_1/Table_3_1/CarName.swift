//
//  CarName.swift
//  Table_3_1
//
//  Created by admin on 23.05.2022.
//

import Foundation
import UIKit

protocol CarNameDelegate {
    func getNameCar(name:String)
}

class CarName: UIViewController {
    var mydelegate: CarNameDelegate!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
        self.textFildCreated()
        self.setNavigationBar()
        
    }
    
    func setNavigationBar() {
        self.navigationItem.title = "Car name"
        let cansel = UIBarButtonItem.init(barButtonSystemItem: .cancel, target: self, action:#selector(canselView) )
        self.navigationItem.leftBarButtonItem = cansel
        let save = UIBarButtonItem.init(barButtonSystemItem: .save, target: self, action: #selector(saveCarName))
        self.navigationItem.rightBarButtonItem = save
    }
    @objc func canselView() {
        self.navigationController?.popViewController(animated: true)
    }
    @objc func saveCarName() {
        
        
        self.navigationController?.popViewController(animated: true)
        
    }

    func textFildCreated() {
        let textFild = UITextField.init(frame: CGRect.init(x: 0, y: 0, width: self.view.frame.size.width * 0.7, height: self.view.frame.height * 0.2))
        textFild.center = self.view.center
        textFild.backgroundColor = .white
        textFild.tag = 1
        self.view.addSubview(textFild)

    }
    
}
