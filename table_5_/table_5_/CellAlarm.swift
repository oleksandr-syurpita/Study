//
//  CellAlarm.swift
//  table_5_
//
//  Created by admin on 02.06.2022.
//

import Foundation
import UIKit


class CellAlarm: UITableViewCell {
    
    static let height: CGFloat = 80
    let offset: CGFloat = 16
    
    var lableTime: UILabel!
    var lableName: UILabel!
    var switcher: UISwitch!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.createLableTime()
        self.createdLableName()
        self.createdSwicher()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createLableTime() {
        lableTime = UILabel.init()
        lableTime.frame.size.width = UIScreen.main.bounds.width * 0.35
        lableTime.frame.size.height = CellAlarm.height * 0.60
        lableTime.frame.origin.x = self.offset
        lableTime.frame.origin.y = 0
//        lableTime.backgroundColor = .green
        lableTime.font = UIFont.systemFont(ofSize: 42)
        self.contentView.addSubview(lableTime)
    }
    
    func createdLableName() {
        lableName = UILabel.init()
        lableName.frame.size.width = lableTime.frame.width
        lableName.frame.size.height = CellAlarm.height - lableTime.frame.height
        lableName.frame.origin.x = lableTime.frame.origin.x
        lableName.frame.origin.y = lableTime.frame.size.height
//        lableName.backgroundColor = .blue
        lableName.font = UIFont.systemFont(ofSize: 20)
        self.contentView.addSubview(lableName)
    }
    
    func createdSwicher() {
        switcher = UISwitch.init()
        switcher.frame.origin.x = UIScreen.main.bounds.width - self.offset - switcher.frame.width
        switcher.center.y = CellAlarm.height / 2
        self.contentView.addSubview(switcher)
    }
    
}
