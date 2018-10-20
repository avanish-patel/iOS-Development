//
//  SecondViewController.swift
//  PassDataVC
//
//  Created by Avanish Patel on 10/18/18.
//  Copyright © 2018 Avanish Patel. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    // label to display inuput from first VC
    @IBOutlet weak var displayText: UILabel!
    
    // initialize variable as empty and set value from first view controllers input field
    var textDisplay = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // set the text of label from variable above that is set from first VC
        displayText.text = textDisplay
    }

}
