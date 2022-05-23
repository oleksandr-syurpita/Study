//
//  ViewController.swift
//  Table_4
//
//  Created by admin on 17.05.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
   
    let arrNames = ["Solid","Yula","Sonia","Kostya","Sasha","Oleg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let table = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: self.view.frame.width * 0.8, height: self.view.frame.height * 0.8))
        table.dataSource = self
        self.view.addSubview(table)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let ideficator = "ideficator"
        var cell = tableView.dequeueReusableCell(withIdentifier: ideficator)
        
        if cell == nil {
            cell = UITableViewCell.init(style: .value1, reuseIdentifier: ideficator)
        }
        let name = arrNames[indexPath.row]
        cell?.textLabel?.text = name
        cell?.detailTextLabel?.text = "OKOKOKOK"
        
        return cell!
    }

}

