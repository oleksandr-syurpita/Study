//
//  ViewController.swift
//  Table_2_6
//
//  Created by admin on 23.05.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let arrWord = ["u","y","t","r","e","w","q"]
    let arrNumber = ["5","1","4","2","3","4","7"]
    
    var arrSecond: [[String]] {
        let arr = [arrWord,arrNumber]

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
        
        let indificator = "indeficator"
        var cell = tableView.dequeueReusableCell(withIdentifier: indificator)

        if cell == nil {
            cell = UITableViewCell.init(style: .value1, reuseIdentifier: indificator)
        }
        
        let arr = arrSecond[indexPath.section]
        let word = arr[indexPath.row]
        
        if indexPath.row % 2 == 0 {
        
            cell?.backgroundColor = .gray
        }
        else {
            cell?.backgroundColor = .blue
        }
        
        cell?.textLabel?.text = word
        cell?.detailTextLabel?.text = String(indexPath.row)
        
        return cell!
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        let text = "Text"
        
        if section == 0 {
            let text_2 = "Text_2"
            return text_2
        }
        else {
            return text
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrSecond.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let arr = arrWord[indexPath.row]
        print(arr)
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {

        if section % 2 == 0 {
            
            return 100
        }
        else {
            return 50
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row % 2 == 0 {
            
            return 100
        }
        else {
            return 200
        }
    }
    

}

