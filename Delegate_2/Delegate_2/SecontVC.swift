//
//  SecontVC.swift
//  Delegate_2
//
//  Created by admin on 09.05.2022.
//

import Foundation
import UIKit

protocol SecontVCDelegir {
    func getColor(color: UIColor)
}

class SecontVC: UIViewController {
    
    var myDelegat: SecontVCDelegir!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.green
        
        let button = UIButton.init()
        button.frame = CGRect.init(x: 30, y: 100, width: 50, height: 50)
        button.backgroundColor = UIColor.yellow
        button.setTitle("Click me", for: .normal)
        self.view.addSubview(button)
        
        button.addTarget(self, action: #selector(action), for: .touchUpInside)
        
    
        
    }
    
    @objc func action() {
        self.myDelegat.getColor(color: self.view.backgroundColor!)
        
        self.dismiss(animated: true)
    }
}
