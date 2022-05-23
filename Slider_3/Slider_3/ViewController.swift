//
//  ViewController.swift
//  Slider_3
//
//  Created by admin on 17.05.2022.
//

import UIKit

class ViewController: UIViewController {

    var start:CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let slider = UISlider.init(frame: CGRect.init(x: 0, y: 100, width: self.view.frame.width * 0.4, height: 100))
        slider.maximumValue = 100
        slider.minimumValue = 0
        self.view.addSubview(slider)
        slider.addTarget(self, action: #selector(changePoint(slider:)), for: .valueChanged)
        
        let circle = UIView.init(frame: CGRect.init(x: 100, y: 100, width: 100, height: 100))
        circle.tag = 1
        circle.backgroundColor = .red
        circle.layer.cornerRadius = 50
        self.start = circle.frame.origin.y
        self.view.addSubview(circle)
        
    }

    @objc func changePoint(slider: UISlider) {
        
        let circle = self.view.viewWithTag(1)!
        
        circle.frame.origin.y = CGFloat(-slider.value) + self.start
        
        print(slider.value)
    }

}

