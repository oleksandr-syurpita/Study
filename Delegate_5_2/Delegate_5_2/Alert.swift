//
//  Alert.swift
//  Delegate_5_2
//
//  Created by admin on 12.05.2022.
//

import Foundation
import UIKit

protocol AlertDelegate {
    func getText(text:String)
    
}

class Alert:UIView{
    var mydelegate:AlertDelegate!
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.black
//        self.frame.origin.x = -self.frame.origin.x
//        self.frame.origin.y = (UIScreen.main.bounds.height - self.frame.height) / 2
        self.frame.origin = CGPoint.init(x: -self.frame.size.width, y: (UIScreen.main.bounds.size.height - self.frame.size.height) / 2)
        self.createTextFild()
        self.wordRandom()
        self.createLable()
        self.animateAlert()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createTextFild() {
        let textFild = UITextField.init(frame: CGRect.init(x: self.frame.width * 0.3    , y: self.frame.height * 0.2, width: self.frame.size.width / 2, height: self.frame.height / 2 ))
        textFild.textColor = UIColor.white
        textFild.backgroundColor = UIColor.green
        textFild.text = ""
        textFild.textAlignment = .center
        textFild.font = UIFont.systemFont(ofSize: 14)
        textFild.tag = 1
        self.addSubview(textFild)
    }
    
    func wordRandom() {
        let word = ["My","text","my","Text"]
        let randomWord = word.randomElement()!
         let textFild = viewWithTag(1) as! UITextField
        textFild.text = randomWord
        print(randomWord)
    }
    func createLable() {
        let lable = UILabel.init(frame: .init(x: self.frame.width * 0.4, y: 0, width: self.frame.width * 0.3, height: self.frame.size.height * 0.2))
        lable.backgroundColor = UIColor.red
        lable.text = "TITLE"
        lable.textAlignment = .center
        self.addSubview(lable)
    }
    
    func animateAlert() {
        UIView.animate(withDuration: 0.5, delay: 1) {
//            self.frame.origin.x = (self.frame.size.width - UIScreen.main.bounds.size.width) / 2
            self.frame.origin.x = (UIScreen.main.bounds.width - self.frame.width) / 2
        } completion: { _ in
            print("animete")
        }

    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        UIView.animate(withDuration: 0.5) {
            self.frame.origin.x = -self.frame.size.width
        } completion: { _ in
            let textFild = self.viewWithTag(1) as! UITextField
            self.mydelegate.getText(text: textFild.text!)
            
        }

    }
    
}
