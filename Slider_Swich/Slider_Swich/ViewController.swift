//
//  ViewController.swift
//  Slider_Swich
//
//  Created by admin on 04.05.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let minvalue = 50
        let maxvalue = 200
        let frame = CGRect.init(x: 50, y: 100, width: minvalue, height: 300)
        let imageView = UIImageView.init(frame: frame)
        imageView.tag = 1
        imageView.image = UIImage.init(named: "orange.jpeg")
        imageView.frame.origin.x = (self.view.frame.size.width - imageView.frame.size.width) / 2
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        self.view.addSubview(imageView)
        
        
        let slider = UISlider.init(frame: CGRect.init(x: 50, y: 420, width: 300, height: 30))
        slider.minimumValue = Float(minvalue)
        slider.maximumValue = Float(maxvalue)
        slider.tag = 2
        self.view.addSubview(slider)
        
        slider.addTarget(self, action: #selector(chengeWidth(slider:)), for: .valueChanged)
        
        let swicher = UISwitch.init()
        swicher.frame.origin = CGPoint.init(x: 50, y: 500)
        self.view.addSubview(swicher)
        swicher.addTarget(self, action: #selector(actionSwicher(swicher:)), for: .valueChanged)
        
        self.checkSwicher(swicher: swicher)
        
        let frameTwo = CGRect.init(x: 50, y: 550, width: 300, height: maxvalue)
        
        let imageTwo = UIImageView.init(frame: frameTwo)
        imageTwo.image = UIImage.init(named: "1.jpeg")
        imageTwo.tag = 3
        imageTwo.frame.origin.x = (self.view.frame.size.width - imageTwo.frame.size.width) / 2

        imageTwo.contentMode = .scaleToFill
        imageTwo.clipsToBounds = true
        
        

        self.view.addSubview(imageTwo)
        
        let slaiderHeight = UISlider.init()
        slaiderHeight.frame = CGRect.init(x: 50, y: 800, width: 300, height: 30)
        slaiderHeight.minimumValue = Float(0)
        slaiderHeight.maximumValue = Float(maxvalue)
        
        self.view.addSubview(slaiderHeight)
        slaiderHeight.addTarget(self, action: #selector(chengeHeight(slaiderHeight:)), for: .valueChanged)
    }
    
    @objc func chengeHeight(slaiderHeight: UISlider){
        let imageView = self.view.viewWithTag(3)!
        imageView.frame.size.height = CGFloat(slaiderHeight.value)
        print(slaiderHeight.value)
        
        
    }
    
    @objc func actionSwicher(swicher: UISwitch) {
        self.checkSwicher(swicher: swicher)
    }
    
    func checkSwicher(swicher: UISwitch) {
        let slider = self.view.viewWithTag(2) as! UISlider

        if swicher.isOn == true {
            slider.isEnabled = true
            self.view.backgroundColor = UIColor.red
        }else {
            slider.isEnabled = false
            self.view.backgroundColor = UIColor.white
        }
    }
    
    @objc func chengeWidth(slider: UISlider) {
        let imageView = self.view.viewWithTag(1)!
        imageView.frame.size.width = CGFloat(slider.value)
        imageView.frame.origin.x = (self.view.frame.size.width - imageView.frame.size.width) / 2
        print(slider.value)
        
    }
    //зробити слайдер для висоти

}

