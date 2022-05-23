//
//  ViewController.swift
//  table_2_3
//
//  Created by admin on 20.05.2022.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
 
    let arrFirst = ["Qwe","QWEe","VFe","Cwe","Asde"]

    let arrTwo = ["asd","zxc","asd","fgg","ghj","tyr","nvb"]
    
    var arrSecond: [[String]] {
      let  arr = [arrFirst,arrTwo]
        
        return arr
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        let table = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))
        
        table.dataSource = self
        table.delegate = self
        
        self.view.addSubview(table)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        let arr = arrSecond[section]
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let indeficator = "indeficator"
        
        var cell = tableView.dequeueReusableCell(withIdentifier: indeficator)
        if cell == nil {
            cell = UITableViewCell.init(style: .value1, reuseIdentifier: indeficator)
        }
        
        if indexPath.row % 2 == 0 {
            cell?.backgroundColor = .cyan
        }
        
        else {
            cell?.backgroundColor = .blue
        }
        
        let arr = arrSecond[indexPath.section]
        let name = arr[indexPath.row]
        cell?.textLabel?.text = name
        cell?.detailTextLabel?.text = String(indexPath.row)
        return cell!
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        let cell = "we"
        if section == 0 {
            let cell_2 = "Not WE"
            return cell_2
        }
        
        return cell
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrSecond.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let name = arrFirst[indexPath.row]
        
        print(name)
    }
}

