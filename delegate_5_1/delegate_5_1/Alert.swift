//
//  Alert.swift
//  delegate_5_1
//
//  Created by admin on 12.05.2022.
//

import Foundation
import UIKit

protocol AlertDelegate {
    func getWord(text: String)
    
}

class Alert:UIView {
    var mydelegate: AlertDelegate!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.yellow

        self.frame.origin = CGPoint.init(x: -self.frame.size.width, y: (UIScreen.main.bounds.size.height - self.frame.size.height) / 2)
        self.creatLable()
        self.wordRandom()
//        self.createButton()
        self.animetedLable()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func creatLable() {
    
        let lable = UILabel.init(frame: CGRect.init(x: 0, y: 0, width: self.frame.size.width , height: self.frame.size.height / 2))
        
        lable.backgroundColor = UIColor.blue
        lable.tag = 1
        lable.textAlignment = .center
        lable.font = .systemFont(ofSize: 40)
        self.addSubview(lable)
        
    }
    
    func wordRandom() {
        let lable = viewWithTag(1) as! UILabel
        let word = ["lable","notLable","okLable","noppeLable","letgooLable",]
        lable.text = word.randomElement()
        
    }
    
    func animetedLable() {
        
        UIView.animate(withDuration: 0.7, delay: 0.5, options: []) {
            self.frame.origin.x = (UIScreen.main.bounds.width - self.frame.width) / 2
        } completion: { _ in
            print("ok")
        }

    }
    
//    func createButton() {
//
//        let button = UIButton.init(frame: CGRect.init(x: 0, y: 0, width: self.frame.size.width , height: (self.frame.height - UIScreen.main.bounds.size.height) / 2))
//        button.setTitle("ckick", for: .normal)
//        button.titleColor(for: .highlighted)
//        button.backgroundColor = UIColor.purple
//        self.addSubview(button)
//    }
        
    
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        UIView.animate(withDuration: 0.5) {
            self.frame.origin.y = -self.frame.height

        } completion: { _ in
            let lable = self.viewWithTag(1) as! UILabel
            self.mydelegate.getWord(text: lable.text!)
            print("okey ")
        }
        }
    }
 
    
    

