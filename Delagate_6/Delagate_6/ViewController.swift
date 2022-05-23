//
//  ViewController.swift
//  Delagate_6
//
//  Created by admin on 17.05.2022.
//

import UIKit

class ViewController: UIViewController, AlertDeladeted {

    override func viewDidLoad() {
        super.viewDidLoad()
        let alert = Alert.init(frame: CGRect.init(x: 0, y: 0, width: self.view.frame.width * 0.8, height: self.view.frame.width * 0.8))
        alert.backgroundColor = UIColor.blue
        alert.myDelegate = self
        self.view.addSubview(alert)
    }

    func getWord(word: String) {
        print(word)
    }

}

