//
//  ViewController.swift
//  Table_4_
//
//  Created by admin on 27.05.2022.
//

import UIKit

class ViewController: UITableViewController, NewNameVCDelegate {
   
    var arrNames: [String] = []
       override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .gray
        self.setNavigationBar()
    }
    
    func setNavigationBar() {
        navigationItem.title = "List names"
        let add = UIBarButtonItem.init(barButtonSystemItem: .add, target: self, action: #selector(createdNewName))
        navigationItem.rightBarButtonItem = add
        
    }
    
    @objc func createdNewName() {
        
        let nameCar = NewNameVC()
        nameCar.myDelegate = self
        navigationController?.pushViewController(nameCar, animated: true)
    }
    
    func getName(name: String) {
        arrNames.append(name)
        tableView.reloadData()
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrNames.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let identifier = "id"
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
        if cell == nil {
            cell = UITableViewCell.init(style: .value2, reuseIdentifier: identifier)
        }
        
        let name = arrNames[indexPath.row]
        
        cell?.textLabel?.text = name
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let deletedAction = UIContextualAction.init(style: .destructive, title: "delete") { swipe, swipeView, complition in
            self.arrNames.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .left)
        }
        deletedAction.backgroundColor = .red
        
        return UISwipeActionsConfiguration.init(actions: [deletedAction])
    }
    
    override func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let edit = UIContextualAction.init(style: .normal, title: "edit") { swipe, swipeView, complition in
            
            print("edit")
        }
       
        edit.backgroundColor = .purple
        
        let copy = UIContextualAction.init(style: .normal, title: "copy") { swipe, swipeView, complition in
            
            print("copy")
        }
       
        edit.backgroundColor = .black
        
        return UISwipeActionsConfiguration.init(actions: [edit, copy])
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            
        let name = arrNames[indexPath.row]
        let carName = NewNameVC()
        carName.myDelegate = self
        carName.name = name
        navigationController?.pushViewController(carName, animated: true)
        
    }

}

