//
//  ViewController.swift
//  TableView
//
//  Created by Avanish Patel on 10/17/18.
//  Copyright © 2018 Avanish Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let list = ["Apple", "Banana", "Orange", "Strawberry","Grapes","Kiwi","Pineaple"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return the nubmer of rows in table view
        return (list.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // make cell and set style and prototype style
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default , reuseIdentifier: "oneCell")
        // set value of label text to list[i]
        cell.textLabel?.text = list[indexPath.row]
        
        // return cell created from code above
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

