//
//  ViewController.swift
//  table_6
//
//  Created by admin on 18.05.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    let arrNames = ["qwe","das","oleg","Sasha"]
    let arrLastNames = ["Beqw","Vdsa","Cdsa","Zdasads"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let table = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: self.view.frame.width * 0.8, height: self.view.frame.height * 0.6))
        table.dataSource = self
        self.view.addSubview(table)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let indeficatorName = "my cell"
        let indeficatorLastname = "LastNames"
        
        var cellLastName = tableView.dequeueReusableCell(withIdentifier: indeficatorLastname)
        
        if cellLastName == nil {
            
            cellLastName = UITableViewCell.init(style: .value2, reuseIdentifier: indeficatorLastname)
            
        }
        
        var cell = tableView.dequeueReusableCell(withIdentifier: indeficatorName)
        
        if cell == nil {
            
            cell = UITableViewCell.init(style: .subtitle, reuseIdentifier: indeficatorName)
        }
        let lastName = arrLastNames[indexPath.row]
        let name = arrNames[indexPath.row]
        cell?.textLabel?.text = name + " " + lastName
        cell?.detailTextLabel?.text = "Name your"
        return cell!
    }
}

