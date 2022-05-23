//
//  Alert.swift
//  delegate_5
//
//  Created by admin on 11.05.2022.
//

import Foundation
import UIKit

protocol AlertDelegate {
    
    func getWord(text: String)
}

class Alert: UIView {
    
    var  myDelegate: AlertDelegate!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.yellow
        self.frame.origin.x = -self.frame.size.width
        self.frame.origin.y = (UIScreen.main.bounds.size.height - self.frame.size.height) / 2
        self.createdLable()
        self.createdWord()
        self.animeted()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    func createdLable() {
        let lable = UILabel.init(frame: CGRect.init(x: 0, y: 0, width: self.frame.size.width , height: self.frame.size.height / 2))
        lable.backgroundColor = UIColor.blue
        lable.tag = 1
        lable.textAlignment = .center
        lable.font = UIFont.systemFont(ofSize: 30.0)
        self.addSubview(lable)

    }
    
    func createdWord() {
       
        let lable = self.viewWithTag(1) as! UILabel
        let word = ["o","s","f","w","e"]
        
        lable.text = word.randomElement()!
        
    }
    
    func animeted() {
        
        UIView.animate(withDuration: 0.5, delay: 0.4, options: []) {
            self.frame.origin.x = (UIScreen.main.bounds.size.width - self.frame.size.width) / 2
        } completion: { _ in
            print("ok")
        }

    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        UIView.animate(withDuration: 0.5) {
            self.frame.origin.x = -self.frame.size.width
        } completion: { _ in
            print("OK_2")
            let lable = self.viewWithTag(1) as! UILabel
            self.myDelegate.getWord(text: lable.text!)
        }

    }
    
    
    
    
}
