//
//  File.swift
//  Delegation
//
//  Created by admin on 18.05.2022.
//

import Foundation
import UIKit

protocol AlertDelegated {
    func getWord(word: String)
}

class Alert: UIView {
    var myDelegated: AlertDelegated!

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.frame.origin.x = -self.frame.width
        self.frame.origin.y = (UIScreen.main.bounds.height - self.frame.height) / 2
        
        self.createdLable()
        self.createdAnimation()
        self.createdWord()

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createdLable() {
        
        let lable = UILabel.init(frame: CGRect.init(x: 0, y: 0, width: self.frame.width * 0.5, height: self.frame.height * 0.3))
        lable.tag = 1
        lable.textAlignment = .center
        lable.font = UIFont.systemFont(ofSize: 50)
        lable.backgroundColor = UIColor.red
        
        self.addSubview(lable)
    }
    
    func createdAnimation() {
        
        UIView.animate(withDuration: 0.5, delay: 0.5, options: []) {
            self.frame.origin.x = (UIScreen.main.bounds.width - self.frame.width ) / 2
        } completion: { _ in
            print("ok")
        }

    }
    
    func createdWord() {
        
        let word = ["c","s","w","q"]
        let lable = self.viewWithTag(1) as! UILabel
        let randomWord = word.randomElement()!
        lable.text = randomWord
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        UIView.animate(withDuration: 0.5, delay: 0.5) {
            self.frame.origin.x = -self.frame.width
        }completion: { _ in
            let lable = self.viewWithTag(1) as! UILabel
            self.myDelegated.getWord(word: lable.text!)
            print("ok2")
        }
    }
    
}
