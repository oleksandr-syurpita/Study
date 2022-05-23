//
//  ViewController.swift
//  UI 3
//
//  Created by admin on 04.05.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let imageView = UIImageView.init(frame: CGRect.init(x: 50, y: 100, width: 300, height: 100))
        imageView.image = UIImage.init(named: "2.jpeg")
        imageView.tag = 2
        self.view.addSubview(imageView)
        
        let textFild = UITextField.init(frame: CGRect.init(x: 50, y: 300, width: 300, height: 50))
        textFild.backgroundColor = UIColor.blue
        textFild.tag = 1
        self.view.addSubview(textFild)
        
        
        let button = UIButton.init(frame: CGRect.init(x: 50, y: 400, width: 100, height: 30))
        button.setTitle("Click", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.backgroundColor = UIColor.red
        self.view.addSubview(button)
        
        button.addTarget(self, action: #selector(actionButton), for: .touchUpInside)
        
        
        
    }
    
   @objc func actionButton() {
       let textFild = self.view.viewWithTag(1) as! UITextField
       let imageView = self.view.viewWithTag(2) as! UIImageView
       let text = textFild.text!
        
       imageView.image = UIImage.init(named: "\(text).jpeg")
        
   }

}

