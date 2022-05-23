//
//  ViewController.swift
//  Table_2_2
//
//  Created by admin on 20.05.2022.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {


    let arrName = ["dqwe,","qwe","asd","ads","zcx"]
    let arrLastName = ["QQQQ","QQQQ","QQQQ","QQQQ","QQQQ","QQQQ","WWWW","WWWW","WWWW","WWWW","WWWW","WWWW"]
    
    var arrSecond :[[String]] {
        let arr = [arrName,arrLastName]
        return arr
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        let table = UITableView.init(frame: CGRect.init(x: 0, y: 50, width: self.view.frame.width, height: self.view.frame.height))
        
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
       
        
        let arr = arrSecond[indexPath.section]
        
        let name = arr[indexPath.row]
        
        cell?.textLabel?.text = name
        
        
        cell?.detailTextLabel?.text = String(indexPath.row)
        
        if indexPath.row % 2 == 0 {
            cell?.backgroundColor = .yellow
        }
        else {
            cell?.backgroundColor = .green
        }
        
        return cell!
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 50
        }
        return 120
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrSecond.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let name = arrLastName[indexPath.row]
        print(name)
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Names"
        }else {
            return "Last Names"
        }
    }
 
}

