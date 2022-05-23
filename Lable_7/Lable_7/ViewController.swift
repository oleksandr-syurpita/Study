//
//  ViewController.swift
//  Lable_7
//
//  Created by admin on 23.05.2022.
//

import UIKit

class ViewController: UIViewController {

    var start: CGFloat = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        let slider = UISlider.init(frame: CGRect.init(x: 50, y: 100, width: self.view.frame.width * 0.7, height: 10))
            self.view.addSubview(slider)
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.addTarget(self, action: #selector(changePoint(slider:)), for: .valueChanged)
        
        
        let circle = UIView.init(frame: CGRect.init(x: 50, y: 200, width: 100, height: 100))
        circle.tag = 1
        circle.backgroundColor = .red
        self.start = circle.frame.origin.x
        circle.layer.cornerRadius = 50
        self.view.addSubview(circle)
        
    }
    
   @objc func changePoint(slider: UISlider) {
       let circle = self.view.viewWithTag(1)
       circle?.frame.origin.x = CGFloat(slider.value) + self.start
       print(slider.value)
        
    }


}

