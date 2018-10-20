//
//  ViewController.swift
//  MultiViewController
//
//  Created by Avanish Patel on 10/17/18.
//  Copyright © 2018 Avanish Patel. All rights reserved.
//

import UIKit

var name: String = ""

class ViewController: UIViewController {
    
    
    @IBOutlet weak var inputName: UITextField!
    

    @IBAction func nameSubmitted(_ sender: Any) {
        
        if(inputName.text != nil){
            
            name = inputName.text!
            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputName.layer.borderWidth = 2
        inputName.layer.cornerRadius = 5
        // Do any additional setup after loading the view, typically from a nib.
    }


}

