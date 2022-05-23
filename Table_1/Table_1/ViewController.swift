//
//  ViewController.swift
//  Table_1
//
//  Created by admin on 17.05.2022.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource {
   
    

    let arrNames = ["Roma","Sasha","Oleg","Andria"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let table = UITableView.init(frame: CGRect.init(x: self.view.frame.width * 0.1, y: 50, width: self.view.frame.width * 0.8, height: self.view.frame.height * 0.8))
        
        table.dataSource = self
        self.view.addSubview(table)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let identfier = "my cell"
        var cell = tableView.dequeueReusableCell(withIdentifier: identfier)
        if cell == nil{
            cell = UITableViewCell.init(style: .value1, reuseIdentifier: identfier)
        }
        let name = arrNames[indexPath.row]
        cell?.textLabel?.text = name
        cell?.detailTextLabel?.text = "Ok"
        return cell!
    }


}

