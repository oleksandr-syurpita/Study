//
//  ViewController.swift
//  Slaider
//
//  Created by admin on 14.05.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var start: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let slider = UISlider.init(frame: CGRect.init(x: self.view.frame.size.width * 0.1, y: 100, width: self.view.frame.size.width * 0.8, height: 20))
        slider.minimumValue = 1
        slider.maximumValue = 100
        self.view.addSubview(slider)
        slider.addTarget(self, action: #selector(actionSlider(slider:)), for: .valueChanged)
        
        let circle = UIView.init(frame: CGRect.init(x: 50, y: 150, width: 100, height: 100))
        self.start = circle.frame.origin.x
        circle.backgroundColor = UIColor.red
        circle.layer.cornerRadius = 50
        circle.tag = 1
        self.view.addSubview(circle)
    }
    
    @objc func actionSlider(slider: UISlider) {
        
        let circle = self.view.viewWithTag(1)!
        
        circle.frame.origin.x = CGFloat(slider.value) + self.start
        
        print("slaider value \(slider.value)")
        //для Y 
    }


}

