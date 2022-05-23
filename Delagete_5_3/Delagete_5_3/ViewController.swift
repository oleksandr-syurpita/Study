//
//  ViewController.swift
//  Delagete_5_3
//
//  Created by admin on 14.05.2022.
//

import UIKit

class ViewController: UIViewController,AlertDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let aler = Alert.init(frame: CGRect.init(x: 0, y: 0, width: self.view.frame.size.width * 0.5, height: self.view.frame.size.height * 0.5))
        
        aler.mydelegate = self
        self.view.addSubview(aler)
    }

    func finish(text: String) {
        print(text)
    }
}

