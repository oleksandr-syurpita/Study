//
//  Alert.swift
//  Delagete_5_3
//
//  Created by admin on 14.05.2022.
//

import Foundation
import UIKit
 
protocol AlertDelegate {
    
    func finish(text:String)
}

class Alert: UIView {
    var mydelegate: AlertDelegate!
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.blue
        self.frame.origin.x = -self.frame.size.width
        self.frame.origin.y = UIScreen.main.bounds.height - self.frame.height
        self.createdLable()
        self.creadWord()
        self.animeted()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func createdLable() {
        
        let lable = UILabel.init(frame: CGRect.init(x: 0, y: 0, width: self.frame.size.width * 0.4, height: self.frame.size.height * 0.5))
        lable.backgroundColor = UIColor.red
        lable.textAlignment = .center
        lable.font = UIFont.systemFont(ofSize: 30)
        lable.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        lable.tag = 1
        self.addSubview(lable)
        
    }
    func creadWord() {
        
        let word = ["OK","Let go","Me ok","Miss"]
        let lable = viewWithTag(1) as! UILabel
        lable.text = word.randomElement()
        
        
    }
    func animeted() {
        
        UIView.animate(withDuration: 0.5, delay: 0.5, options: []) {
            self.frame.origin.x = (UIScreen.main.bounds.size.width - self.frame.width) / 2
        } completion: { _ in
                print("animated complited")
        }

    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        UIView.animate(withDuration: 0.5) {
            self.frame.origin.x = -self.frame.width
            
        } completion: { _ in
            
            let lable = self.viewWithTag(1) as! UILabel
            self.mydelegate.finish(text: lable.text!)
            print("second animete complited")
        }
    }
    
}
