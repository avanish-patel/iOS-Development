//
//  ViewController.swift
//  MutlipleViewControllers
//
//  Created by Avanish Patel on 10/17/18.
//  Copyright © 2018 Avanish Patel. All rights reserved.
//

import UIKit

var name:String = ""

class ViewController: UIViewController {

    
    @IBOutlet weak var enteredName: UITextField!
    
    
    @IBAction func submitName(_ sender: Any) {
        
        name = enteredName.text!
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    


}

