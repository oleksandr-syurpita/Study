//
//  Alert.swift
//  Delegate_4
//
//  Created by admin on 09.05.2022.
//

import Foundation
import UIKit

protocol AlertDelegate {
    
    func getText(text: String)
}

class Alert: UIView {
    
    var myDelegate: AlertDelegate!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.yellow
        
        self.createLable()
        self.randomText()
        self.animeteInput()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func createLable() {
        let lable = UILabel.init(frame: CGRect.init(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height / 2))
        lable.tag = 1
        lable.textAlignment = .center
        self.addSubview(lable)
    }
    
    func randomText() {
        let words = ["Car", "Lable", "Black", "Red", "Cat"]
         let randomWord = words.randomElement()!
        let lable = self.viewWithTag(1) as! UILabel
        
        lable.text = randomWord
        
    }
    
    func animeteInput() {
        self.frame.origin.x = -self.frame.size.width
        self.frame.origin.y = (UIScreen.main.bounds.size.height - self.frame.size.height) / 2
        
        UIView.animate(withDuration: 0.5, delay: 0.5, options: []) {
            self.frame.origin.x = (UIScreen.main.bounds.size.width - self.frame.size.width) / 2
        } completion: { _ in
            
        }

    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        UIView.animate(withDuration: 1) {
            self.frame.origin.x = -self.frame.size.width
        } completion: { _ in
            
            let lable = self.viewWithTag(1) as! UILabel
            let text = lable.text!
            
            self.myDelegate.getText(text: text)
        }

    }
    
    
    
}
