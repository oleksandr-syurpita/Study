//
//  Alert.swift
//  deleget_5_4
//
//  Created by admin on 14.05.2022.
//

import Foundation
import UIKit

protocol AlertDelegate {
    func getword(text:String)
}

class Alert:UIView{
    var myDelegated: AlertDelegate!
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.frame.origin = CGPoint.init(x: -self.frame.width, y: (UIScreen.main.bounds.size.height - self.frame.size.height) / 2 )
        self.backgroundColor = UIColor.black
        self.createdLable()
        self.button()
        self.actionButton()
        self.animetedLable()
        self.word()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func createdLable() {
        
        let lable = UILabel.init(frame: CGRect.init(x: 0, y: 0, width: self.frame.size.width , height: self.frame.size.height * 0.5))
        lable.backgroundColor = UIColor.red
        lable.textAlignment = .center
        lable.tag = 1
        self.addSubview(lable)
    }
    
    func animetedLable() {
        
        UIView.animate(withDuration: 0.5, delay: 0.5, options: []) {
            self.frame.origin.x = (UIScreen.main.bounds.width - self.frame.size.width) / 2
        } completion: { _ in
            print("ok")
        }

    }
    func word() {
        
        let word = ["Sorry","OK","Bad","My"]
        let lable = viewWithTag(1) as! UILabel
        lable.text = word.randomElement()
        
    }
    
    func button() {
        let button = UIButton.init(frame: CGRect.init(x: 10, y: 10, width: self.frame.size.width * 0.3, height: self.frame.height * 0.1))
        button.setTitle("Click", for: .highlighted)
        button.backgroundColor = UIColor.green
        self.addSubview(button)
        
        button.addTarget(self, action: #selector(actionButton), for: .touchUpInside)
        
    }
    
    @objc func actionButton() {
        
        UIView.animate(withDuration: 0.5) {
            self.frame.origin.x = -self.frame.width
        } completion: { _ in
            let lable = self.viewWithTag(1) as! UILabel
            self.myDelegated.getword(text: lable.text!)
            print("ok_2")
        }
        
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        UIView.animate(withDuration: 0.5) {
            self.frame.origin.x = self.frame.width
        } completion: { _ in
            
            print("ok_3")
        }
    }
//    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
      
    }
    

