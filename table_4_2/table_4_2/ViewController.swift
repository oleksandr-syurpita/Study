//
//  ViewController.swift
//  table_4_2
//
//  Created by admin on 01.06.2022.
//

import UIKit

class ViewController: UITableViewController, CarInfoDelegate {
    
    var arr: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .blue
        self.setNavigationBar()
    }
    
    func setNavigationBar() {
        navigationItem.title = "Car name is"
        let add = UIBarButtonItem.init(barButtonSystemItem: .add
                                       , target: self, action: #selector(pushNewView))
        navigationItem.rightBarButtonItem = add
        
    }
    
    @objc func pushNewView() {
        let carInfo = CarInfo()
        carInfo.mydelegate = self
        navigationController?.pushViewController(carInfo, animated: true)
    }
    func getNameCar(nameCar: String) {
        arr.append(nameCar)
        tableView.reloadData()
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let identifier = "id"
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
        if cell == nil {
            cell = UITableViewCell.init(style: .value2, reuseIdentifier: identifier)
        }
        
        let name = arr[indexPath.row]
        
        cell?.textLabel?.text = name
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }

    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleted = UIContextualAction.init(style: .destructive, title: "delete") { swipe, swipeView, complited in
            self.arr.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .left)
        }
        deleted.backgroundColor = .red
        
        return UISwipeActionsConfiguration.init(actions: [deleted])
    }
    
    override func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let edit = UIContextualAction.init(style: .normal, title: "edit") { swipe, swipeView, complited in
            print("edit")
        }
        edit.backgroundColor = .blue
        let copy = UIContextualAction.init(style: .normal, title: "copy") { swipe, swipeView, complited in
            print("copy")
        }
        edit.backgroundColor = .green
        return  UISwipeActionsConfiguration.init(actions: [edit, copy])
    }

}

