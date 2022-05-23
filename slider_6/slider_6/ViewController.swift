//
//  ViewController.swift
//  slider_6
//
//  Created by admin on 18.05.2022.
//

import UIKit

class ViewController: UIViewController {

    var start: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let slider = UISlider.init(frame: CGRect.init(x: 10, y: 100, width: self.view.frame.width * 0.7, height: 10))
        slider.maximumValue = 100
        slider.minimumValue = 0
        self.view.addSubview(slider)
        slider.addTarget(self, action: #selector(ChangedPoint(slider:)), for: .valueChanged)
        
        let circle = UIView.init(frame: CGRect.init(x: 10, y: 150, width: self.view.frame.width * 0.4, height: self.view.frame.width * 0.4))
        circle.tag = 1
        self.start = circle.frame.origin.x
        circle.backgroundColor = UIColor.red
        circle.layer.cornerRadius = 50
        self.view.addSubview(circle)
    }

   @objc func ChangedPoint(slider: UISlider) {
        let circle = self.view.viewWithTag(1)!
       circle.frame.origin.x = CGFloat(slider.value) + self.start
       print(slider.value)
    }
    
}

