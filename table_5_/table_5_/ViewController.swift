//
//  ViewController.swift
//  table_5_
//
//  Created by admin on 02.06.2022.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .lightGray
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let indeficator = "indeficator"
        var cell = tableView.dequeueReusableCell(withIdentifier: indeficator) as? CellAlarm
        if cell == nil {
            cell = CellAlarm.init(style: .value1, reuseIdentifier: indeficator)
            cell?.switcher.addTarget(self, action: #selector(changeColorCell(swicher:)), for: .valueChanged)
        }
        
        cell?.lableTime.text = "12:00"
        cell?.lableName.text = "Alarm"
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CellAlarm.height
    }
    
    @objc func changeColorCell(swicher: UISwitch) {
        
        let contentView = swicher.superview
        let cell = contentView?.superview
        if swicher.isOn == true {
            cell?.backgroundColor = .red
        } else {
            cell?.backgroundColor = .blue
        }
        
        
        
    }
}

