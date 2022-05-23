//
//  ViewController.swift
//  Table_5
//
//  Created by admin on 18.05.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
   
    let arrNames = ["Kostay","Sasha","Oleg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let table = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: self.view.frame.width * 0.7, height: self.view.frame.height * 0.7))
        table.dataSource = self
        self.view.addSubview(table)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let indeficator = "my idesicator"
       
        var cell = tableView.dequeueReusableCell(withIdentifier: indeficator)
        
        if cell == nil {
            cell = UITableViewCell.init(style: .value1, reuseIdentifier: indeficator)
            
        }
        
        let name = arrNames[indexPath.row]
        
        cell?.detailTextLabel?.text = "Name "
        cell?.textLabel?.text = name
        
        return cell!
    }


}

