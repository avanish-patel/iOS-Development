//
//  ViewController.swift
//  TableViewAction
//
//  Created by Avanish Patel on 10/17/18.
//  Copyright © 2018 Avanish Patel. All rights reserved.
//

import UIKit


let superHeros = ["batman","captainA","deadpool","hulk","ironman","joker","spyderman"]
let heroDescription : String = " is a fictional superhero appearing in American comic books published by DC Comics."

var indexNumber = 0

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // get the total number of rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (superHeros.count)
    }
    
    // set the value at index in tableview
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = superHeros[indexPath.row].capitalized
        
        return cell
    }
    
    // add action to each cell
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "segue", sender: self)
        indexNumber = indexPath.row
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

