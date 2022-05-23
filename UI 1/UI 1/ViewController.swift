//
//  ViewController.swift
//  UI 1
//
//  Created by admin on 27.04.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let redview = UIView.init()
        redview.frame.size.height = 100
        redview.frame.size.width = 200
        redview.frame.origin.x = 50
        redview.frame.origin.y = 100
        redview.backgroundColor = UIColor.red
        self.view.addSubview(redview)
        
        let blueview = UIView.init()
        blueview.frame.size.height = 50
        blueview.frame.size.width = 100
        blueview.frame.origin.x = 0
        blueview.frame.origin.y = 0
        blueview.backgroundColor = UIColor.blue
        redview.addSubview(blueview)

        let greenview = UIView.init()
        greenview.frame.size.height = 100
        greenview.frame.size.width = 100
        greenview.frame.origin.x = 100
        greenview.frame.origin.y = 300
        greenview.backgroundColor = UIColor.green
        self.view.addSubview(greenview)
        
        greenview.layer.cornerRadius = greenview.frame.size.height / 2
        greenview.layer.borderColor = UIColor.red.cgColor
        greenview.layer.borderWidth = 10
        greenview.layer.shadowColor = UIColor.black.cgColor
        greenview.layer.shadowOffset = CGSize.init(width: 10, height: 0)
        greenview.layer.shadowRadius = 50
        greenview.layer.shadowOpacity = 1
        
        let blackview = UIView.init()
        blackview.frame.size.height = 20
        blackview.frame.size.width = 100
        blackview.frame.origin.x = redview.frame.size.width + redview.frame.origin.x
        blackview.frame.origin.y =  redview.frame.origin.y - blackview.frame.size.height
        blackview.backgroundColor = UIColor.black
        self.view.addSubview(blackview)
        
        
    }


}

