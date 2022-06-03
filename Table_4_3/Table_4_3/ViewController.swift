//
//  ViewController.swift
//  Table_4_3
//
//  Created by admin on 02.06.2022.
//

import UIKit

class ViewController: UITableViewController, CarInfoDelegate {
 

    var arr: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .blue
        self.navigationBarItem()
    }
    
    func navigationBarItem() {
        navigationItem.title = "Car name"
        let add = UIBarButtonItem.init(barButtonSystemItem: .add, target: self, action: #selector(actionAdd))
        navigationItem.rightBarButtonItem = add
    }

    @objc func actionAdd() {
        
        let carInfo = CarInfo()
        carInfo.mydelegate = self
        navigationController?.pushViewController(carInfo, animated: true)
    }

    func getName(nameCar: String) {
        arr.append(nameCar)
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let indeficator = "indeficator"
        
        var cell = tableView.dequeueReusableCell(withIdentifier: indeficator)
        if cell == nil {
            cell = UITableViewCell.init(style: .value1, reuseIdentifier: indeficator)
            
        }
        
        let name = arr[indexPath.row]
        
        cell?.textLabel?.text = name
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleted = UIContextualAction.init(style: .destructive, title: "deleted") { swipe, swipeView, complited in
            
            self.arr.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .left)
            
            
        }
        deleted.backgroundColor = .red
        return UISwipeActionsConfiguration.init(actions: [deleted])
        
    }

}

