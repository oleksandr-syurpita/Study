//
//  ViewController.swift
//  Table_3
//
//  Created by admin on 26.05.2022.
//

import UIKit

class ViewController: UITableViewController, CarNameDelegate {
 
    

     var arrName: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
        self.setNaviganion()
    }
    
    }

extension ViewController {
    
    func setNaviganion() {
        self.navigationItem.title = "Car name is"
        let add = UIBarButtonItem.init(barButtonSystemItem: .add, target: self, action: #selector(createdAdd))
        self.navigationItem.rightBarButtonItem = add
        
    }
    
    @objc func createdAdd() {
        let carName = CarName()
        carName.mydelegate = self
        navigationController?.pushViewController(carName, animated: true)
         
    }
    func getName(name: String) {
        print(name)
        arrName.append(name)
        self.tableView.reloadData()
        
    }
}

extension ViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrName.count
        
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let index = "index"
        var cell = tableView.dequeueReusableCell(withIdentifier: index)
        if cell == nil {
            cell = UITableViewCell.init(style: .value1, reuseIdentifier: index)
        }
        
        let arr = arrName[indexPath.row]
        cell?.textLabel?.text = arr
        
        return cell!
    }
}

