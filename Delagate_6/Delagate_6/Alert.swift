//
//  Alert.swift
//  Delagate_6
//
//  Created by admin on 17.05.2022.
//

import Foundation
import UIKit

protocol AlertDeladeted {
    func getWord(word: String)
}
class Alert: UIView {
    var myDelegate: AlertDeladeted!
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.frame.origin.x = -self.frame.width
        self.frame.origin.y = (UIScreen.main.bounds.height - self.frame.height) / 2
        
        self.createdLable()
        self.createdWords()
        self.animateAlert()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createdLable() {
        let lable = UILabel.init(frame: CGRect.init(x: 60, y: 50, width: self.frame.width * 0.5, height: self.frame.height * 0.5))
        lable.backgroundColor = UIColor.red
        lable.tag = 1
        lable.textAlignment = .center
        self.addSubview(lable)
    }
    
    func animateAlert() {
        UIView.animate(withDuration: 0.5, delay: 0.5, options: []) {
            self.frame.origin.x = (UIScreen.main.bounds.width - self.frame.width) / 2
        } completion: { _ in
            print("first animated")
        }

    }
    
    func createdWords() {
        
        let words = ["z","f","r","e","w","d"]
        let lable = self.viewWithTag(1) as! UILabel
        lable.text = words.randomElement()
        
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        UIView.animate(withDuration: 0.5, delay: 0.5) {
            self.frame.origin.x = -self.frame.width
        }completion: { _ in
            let lable = self.viewWithTag(1) as! UILabel
            self.myDelegate.getWord(word: lable.text!)
            print("ok")
        }
    }
}
