//
//  ViewController.swift
//  Table_3
//
//  Created by admin on 17.05.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
   
    let word = ["x","z","q","ad","asda"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let table = UITableView.init(frame: CGRect.init(x: self.view.frame.width * 0.1, y: self.view.frame.height * 0.1, width: self.view.frame.width * 0.8 , height: self.view.frame.height * 0.8))
        table.dataSource = self
        self.view.addSubview(table)
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return word.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let ideficator = "my cell"
        var cell = tableView.dequeueReusableCell(withIdentifier: ideficator)
        
        if cell == nil {
            cell = UITableViewCell.init(style: .value2, reuseIdentifier: ideficator)
            
        }
        let words = word[indexPath.row]
        cell?.textLabel?.text = words
        cell?.detailTextLabel?.text = "ok ok ok"
        
        return cell!
        
    }

}

