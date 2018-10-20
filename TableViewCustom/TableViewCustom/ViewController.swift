//
//  ViewController.swift
//  TableViewCustom
//
//  Created by Avanish Patel on 10/17/18.
//  Copyright © 2018 Avanish Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let superHero = ["hero1","hero2","hero3","hero4","hero5"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return (superHero.count)
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell"
            , for: indexPath) as! CustomCellTableViewCell
        
        cell.profileImage.image = UIImage(named: superHero[indexPath.row]+".png")
        cell.profileName.text = superHero[indexPath.row]
        
        return cell
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

