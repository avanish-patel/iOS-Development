//
//  ViewController.swift
//  todo
//
//  Created by Avanish Patel on 10/16/18.
//  Copyright © 2018 Avanish Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var today: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // get the today date and formate it
        let date = Date()
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = "EEEE d MMM yyyy"
        let today = dateFormatter.string(from: date)
        
        self.today.text = today
    }


}

