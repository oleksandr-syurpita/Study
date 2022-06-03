//
//  ViewController.swift
//  Table_3_1
//
//  Created by admin on 23.05.2022.
//

import UIKit

class ViewController: UITableViewController {

    //var arrCarName = [String].init()
    
    var arrCarName: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .blue
        self.setNavigationBar()
        
    }
}
extension ViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrCarName.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let indeficator = "indeficator"
        var cell = tableView.dequeueReusableCell(withIdentifier: indeficator)
        if cell == nil {
            cell = UITableViewCell.init(style: .value1, reuseIdentifier: indeficator)
        }
        let name = arrCarName[indexPath.row]
        
        cell?.textLabel?.text = name
        
        
        return cell!
    }
    
}


//MARK: - CarInfoDelegate
extension ViewController: CarNameDelegate {
    
    func getNameCar(name: String) {
        arrCarName.append(name)
        self.tableView.reloadData()
    }
}

//MARK: - Navigation Bar
extension ViewController {
    
    func setNavigationBar() {
        self.navigationItem.title = "List cars"
        let plusButton = UIBarButtonItem.init(barButtonSystemItem: .add, target: self, action: #selector(addCar))
        self.navigationItem.rightBarButtonItem = plusButton
    }

    @objc func addCar() {
        let carName = CarName()
        carName.mydelegate = self
        self.navigationController?.pushViewController(carName, animated: true)
    }
}
