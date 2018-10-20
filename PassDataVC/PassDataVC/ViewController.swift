//
//  ViewController.swift
//  PassDataVC
//
//  Created by Avanish Patel on 10/18/18.
//  Copyright © 2018 Avanish Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // get outlet of input text
    @IBOutlet weak var inputText: UITextField!
    
    // on Submit check for condition
    @IBAction func submit(_ sender: Any) {
        // check condition before performing segue
        if inputText.text != ""{
            performSegue(withIdentifier: "segue", sender: self)
        }
    }
    
    // prepare before going to second VC
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // get second VC
        let secondVC = segue.destination as! SecondViewController
        // set property of second VC
        secondVC.textDisplay = inputText.text!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

