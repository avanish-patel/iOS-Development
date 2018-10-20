//
//  ViewController.swift
//  NavigationWithTableViewAction
//
//  Created by Avanish Patel on 10/18/18.
//  Copyright © 2018 Avanish Patel. All rights reserved.
//

import UIKit


let superHeros = ["batman","captainA","deadpool","hulk","ironman","joker","spyderman"]
let heroDescription = " is a fictional superhero appearing in American comic books published by Marvel Comics."
var superHeroIndex = 0

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (superHeros.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell"
            , for: indexPath)
        
        cell.textLabel?.text = superHeros[indexPath.row].capitalized
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        superHeroIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

