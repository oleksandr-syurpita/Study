//
//  ViewController.swift
//  table_2_
//
//  Created by admin on 18.05.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let arrNames = ["eqwqew","Sasha","Oleg","eqw","Oleg","Oleg","Oleg","Oleg"]
    let arrLastNames = ["qwe","asdads","dasas","sdad","sdad","sdad","sdad","sdad"]
    
    var arrFullNames: [[String]] {
        let arr = [arrNames, arrLastNames]
        return arr
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let table = UITableView.init(frame: CGRect.init(x: 0, y:  0, width: self.view.frame.width * 0.7, height: self.view.frame.height * 0.7))
        table.center = self.view.center
        table.backgroundColor = UIColor.lightGray
        table.dataSource = self
        table.delegate = self
        self.view.addSubview(table)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrFullNames.count
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let arr = arrFullNames[section]
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let ideficatorName = ""
        
        var cell = tableView.dequeueReusableCell(withIdentifier: ideficatorName)
        if cell == nil {
            cell = UITableViewCell.init(style: .value1, reuseIdentifier: ideficatorName)
        }
        
        let arr = arrFullNames[indexPath.section]
        let name = arr[indexPath.row]
        
        cell?.textLabel?.text = name
        cell?.detailTextLabel?.text = String(indexPath.row)
        if indexPath.row % 2 == 0 {
            cell?.backgroundColor = UIColor.red
        }else {
            cell?.backgroundColor = UIColor.white
        }
        
        return cell!
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 80
        }
        return 120
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let name = arrNames[indexPath.row]
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

