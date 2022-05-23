//
//  ViewController.swift
//  TableView
//
//  Created by admin on 14.05.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    let arrNames = ["Roma", "Andri", "Oleg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let table = UITableView.init(frame: CGRect.init(x: 0, y: 50, width: self.view.frame.size.width, height: self.view.frame.size.height - 150))
        table.backgroundColor = UIColor.blue
        table.dataSource = self
        self.view.addSubview(table)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "My cell"
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
        if cell == nil {
            cell = UITableViewCell.init(style: .value1, reuseIdentifier: identifier)
        }
        let name = arrNames[indexPath.row]
        cell?.textLabel?.text = name
        cell?.detailTextLabel?.text = "detail"
        cell?.imageView?.image = UIImage.init(named: "1.jpeg")
        return cell!
    }


}

