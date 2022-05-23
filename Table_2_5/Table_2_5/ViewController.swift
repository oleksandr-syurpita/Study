//
//  ViewController.swift
//  Table_2_5
//
//  Created by admin on 21.05.2022.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

            
            let arrFirstName = ["Andria","Oleg","Artur","Misha","Yarik"]
            let arrTwoLastName = ["Akir","Dasdv","Okar","Kors","Kobs","Dar"]
            
            var arrFullName : [[String]] {
                
                let arr = [arrFirstName,arrTwoLastName]
                
                return arr
            }
            
            override func viewDidLoad() {
                super.viewDidLoad()
                
                let table = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))
                
                table.dataSource = self
                table.delegate = self
                self.view.addSubview(table)
                
            }
            
            
            func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                
                let arr = arrFullName[section]
                
                return arr.count
            }
            
            func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                
                let indeficator = "indeficator"
                
                var cell = tableView.dequeueReusableCell(withIdentifier: indeficator)
                if cell == nil {
                    cell = UITableViewCell.init(style: .value1, reuseIdentifier: indeficator)
                }
                if indexPath.section % 2 == 0 {
                    
                    cell?.backgroundColor = .red
                }
                else {
                    cell?.backgroundColor = .green
                }
                
                let arr = arrFullName[indexPath.section]
                let lastName = arr[indexPath.row]
                
                
                
                cell?.textLabel?.text = lastName
                cell?.detailTextLabel?.text = arrFirstName[indexPath.row]
                
                return cell!
            }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let text = "Text"
        
        if section == 0 {
            let text_2 = "Text_2"
            return text_2
        }
        else {
            return text
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrFullName.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 50
        }
        return 120
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let name = arrTwoLastName[indexPath.row]
        print(name)
    }
    
    


        }


    




