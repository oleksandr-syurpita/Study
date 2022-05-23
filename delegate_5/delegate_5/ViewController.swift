//
//  ViewController.swift
//  delegate_5
//
//  Created by admin on 11.05.2022.
//

import UIKit

class ViewController: UIViewController, AlertDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let frame = CGRect.init(x: 0, y: 0, width: self.view.frame.size.width * 0.8, height: self.view.frame.size.width * 0.4 )
        let alert = Alert.init(frame:frame )
        
        self.view.addSubview(alert)
        
        alert.myDelegate = self
        
        
        
    }
    
    func getWord(text: String) {
        print(text)
    }


}

