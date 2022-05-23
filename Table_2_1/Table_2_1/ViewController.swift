//
//  ViewController.swift
//  Table_2_1
//
//  Created by admin on 20.05.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    let arrFirstName = ["VVCS","Vdas","Cdasd","Zdasd","Fasdas","Qdasda","Dsad","VVCS","Vdas","Cdasd","Zdasd","Fasdas","Qdasda","Dsad","VVCS","Vdas","Cdasd","Zdasd","Fasdas","Qdasda","Dsad","VVCS","Vdas","Cdasd","Zdasd","Fasdas","Qdasda","Dsad"]
    let arrTwoLastName = ["hjg","fdg","qew","czx","sda","sda","hjg","fdg","qew","czx","sda","sda","hjg","fdg","qew","czx","sda","sda","hjg","fdg","qew","czx","sda","sda","hjg","fdg","qew","czx","sda","sda","hjg","fdg","qew","czx","sda","sda","hjg","fdg","qew","czx","sda","sda"]
    
    var arrSecond: [[String]] {
         let arr = [arrFirstName, arrTwoLastName]
        return arr
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let table = UITableView.init(frame: CGRect.init(x: 50, y: 50, width: self.view.frame.width, height: self.view.frame.height))
        table.center = self.view.center
        table.dataSource = self
        table.delegate = self
        
        self.view.addSubview(table)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        let arr = arrSecond[section]
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let ideficator = "ideficator"
        var cell = tableView.dequeueReusableCell(withIdentifier: ideficator)
        if cell == nil {
            cell = UITableViewCell.init(style: .value1, reuseIdentifier: ideficator)
        }
   
        if indexPath.row % 2 == 0 {
            cell?.backgroundColor = .red
        }
        else {
            cell?.backgroundColor = .blue
        }
        let arr = arrSecond[indexPath.section]
        let name = arr[indexPath.row]
        
        cell?.textLabel?.text = name
        cell?.detailTextLabel?.text = "okok"
        
        return cell!
    }
    
  
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 100
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrSecond.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let name = arrFirstName[indexPath.row]
        print(name)
    }
   

}

