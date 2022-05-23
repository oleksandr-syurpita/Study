//
//  ViewController.swift
//  Slider_5
//
//  Created by admin on 17.05.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var start: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let slider = UISlider.init(frame: CGRect.init(x: 10, y: 50, width: self.view.frame.width * 0.8, height: 100))
        slider.minimumValue = 0
        slider.maximumValue = 100
        self.view.addSubview(slider)
        slider.addTarget(self, action: #selector(changePosition(slider:)), for: .valueChanged)
        
        let circle = UIView.init(frame: CGRect.init(x: 10, y: 150, width: 100, height: 100))
        circle.backgroundColor = .red
        circle.layer.cornerRadius = 50
        circle.tag = 1
        
        self.start = circle.frame.origin.x
        self.view.addSubview(circle)
        
    }

    @objc func changePosition(slider: UISlider) {
        let circle = self.view.viewWithTag(1)!
        circle.frame.origin.x = CGFloat(slider.value) + self.start
        
        print(slider.value)
    }

}

