//
//  ViewController.swift
//  UI 2
//
//  Created by admin on 27.04.2022.
//

import UIKit

class ViewController: UIViewController {
    let textfild = UITextField()
    let lable = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
       
        lable.frame.size.height = 100
        lable.frame.size.width = 200
        lable.frame.origin.y = 100
        lable.frame.origin.x = 100
        lable.backgroundColor = UIColor.red
        self.view.addSubview(lable)
        
       lable.text =  "TEXT\nLALALA"
        lable.textAlignment = .center
        lable.textColor = UIColor.white
        lable.font = UIFont.init(name: "AvenirNextCondensed-Bold", size: 40)
        lable.font = UIFont.systemFont(ofSize: 25, weight: .light)
        lable.numberOfLines = 0
        lable.adjustsFontSizeToFitWidth = false
        
        textfild.frame.size.height = 50
        textfild.frame.size.width = 200
        textfild.frame.origin.y = 250
        textfild.frame.origin.x = 100
        textfild.backgroundColor = UIColor.lightGray
        textfild.placeholder = "some text"
        textfild.font = UIFont.systemFont(ofSize: 20, weight: .heavy)
        self.view.addSubview(textfild)
        
        let imageView = UIImageView()
        imageView.frame.size = CGSize.init(width: 200, height: 200)
        imageView.frame.origin = CGPoint.init(x: 100, y: 350)
        imageView.backgroundColor = UIColor.black
        self.view.addSubview(imageView)
        let image = UIImage.init(named: "image")
        imageView.image = image
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        
        
        let button = UIButton()
        button.frame.size = CGSize.init(width: 150, height: 150)
        button.frame.origin = CGPoint.init(x: 0, y: 0)
        button.setTitle("Click", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        button.setTitleColor(.black, for: .normal)
        self.view.addSubview(button)
        button.addTarget(self, action: #selector(actionForButton), for: .touchUpInside)
        
        
    }
    

    @objc func actionForButton() {
        let text = textfild.text
        lable.text = text
        textfild.text = ""
    }

}

