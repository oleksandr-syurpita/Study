//
//  ViewController.swift
//  Table_2_4
//
//  Created by admin on 21.05.2022.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
  
    

    let word = ["k","j","h","g","f","d","s","a"]
    let number = ["1","2","3","4","5","6","7","8","9","0"]
    
    var arrText: [[String]] {
        
        let arr = [word,number]
        
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
        let arr = arrText[section]

        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let index = "index"
        
        var cell = tableView.dequeueReusableCell(withIdentifier: index)
        
        if cell == nil {
            
            cell = UITableViewCell.init(style: .value1, reuseIdentifier: index)
        }
        
        let arr = arrText[indexPath.section]
        let word = arr[indexPath.row]
        
        if indexPath.row % 2 == 0 {
            cell?.backgroundColor = .blue
        }
        else {
            cell?.backgroundColor = .cyan
        }
        
        cell?.textLabel?.text = word
        cell?.detailTextLabel?.text = String(indexPath.row) //number[indexPath.row]
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "ok"
        }
        else {
            return "maybe"
        }
    }
    
  
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
 
        let word = word[indexPath.row]
        
        print(word)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 50
        }
        return 120
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrText.count
    }
    
    

    
    
}

