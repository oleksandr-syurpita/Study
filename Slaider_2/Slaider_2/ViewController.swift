//
//  ViewController.swift
//  Slaider_2
//
//  Created by admin on 17.05.2022.
//

import UIKit

class ViewController: UIViewController {

    var start: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let slaider = UISlider.init(frame: CGRect.init(x: 100, y: 100, width: self.view.frame.width * 0.5, height: 100))
        slaider.minimumValue = 1
        slaider.maximumValue = 100
        self.view.addSubview(slaider)
        slaider.addTarget(self, action: #selector(ChangePoint(slaider:)), for: .valueChanged)
        
        let circle = UIView.init(frame: CGRect.init(x: 100, y: 200 , width: 100, height: 100))
        circle.layer.cornerRadius = 50
        circle.backgroundColor = .red
        circle.tag = 1
        self.start = circle.frame.origin.x
        self.view.addSubview(circle)
        
        
    }
    
    @objc func ChangePoint(slaider: UISlider) {
        
        let circle = self.view.viewWithTag(1)!
        circle.frame.origin.x = CGFloat(slaider.value) + self.start
        
        print(slaider.value)
    }


}

