//
//  ViewController.swift
//  Delegate_2
//
//  Created by admin on 09.05.2022.
//

import UIKit

class ViewController: UIViewController, SecontVCDelegir {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let frame = CGRect.init(x: 30, y: 100, width: 50, height: 50)
        let button = UIButton.init(frame: frame)
        button.setTitle("click", for: .normal)
        button.backgroundColor = UIColor.black
        self.view.addSubview(button)
        button.addTarget(self, action: #selector(action), for: .touchUpInside)
        
    }
    
    @objc func action() {
        
        let secondVC = SecontVC.init()
        secondVC.myDelegat = self
        secondVC.modalPresentationStyle = .fullScreen
        
        
        self.present(secondVC, animated: true)
    }
    
    func getColor(color: UIColor) {
        self.view.backgroundColor = color
    }

}

