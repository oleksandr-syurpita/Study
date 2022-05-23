//
//  ViewController.swift
//  Delegation
//
//  Created by admin on 18.05.2022.
//

import UIKit

class ViewController: UIViewController, AlertDelegated {

    override func viewDidLoad() {
        super.viewDidLoad()

        let alert = Alert.init(frame: CGRect.init(x: 0, y: 0, width: self.view.frame.width * 0.5, height: self.view.frame.height * 0.5))
        alert.myDelegated = self
        self.view.addSubview(alert)
    }
    
    func getWord(word: String) {
        print(word)
    }


}

