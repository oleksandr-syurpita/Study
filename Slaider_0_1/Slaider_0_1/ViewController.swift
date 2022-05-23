//
//  ViewController.swift
//  Slaider_0_1
//
//  Created by admin on 17.05.2022.
//

import UIKit

class ViewController: UIViewController {
    var start: CGFloat = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        let slaider = UISlider.init(frame: CGRect.init(x: 50, y: 100, width: self.view.frame.width * 0.6, height: 10))
                                    
        slaider.maximumValue = 100
        slaider.minimumValue = 1
        self.view.addSubview(slaider)
        slaider.addTarget(self, action: #selector(changePosition(sladider:)), for: .valueChanged)
        
        let circle = UIView.init(frame: CGRect.init(x: 50, y: 150, width: 100, height: 100))
        circle.layer.cornerRadius = 50
        circle.backgroundColor = .red
        circle.tag = 1
        self.start = circle.frame.origin.x
        self.view.addSubview(circle)
        
        
    }
    @objc func changePosition(sladider: UISlider) {
        
        let circle = self.view.viewWithTag(1)!
        circle.frame.origin.x = CGFloat(sladider.value) + self.start
        
        print(sladider.value)
        
    }


}

