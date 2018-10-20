//
//  SecondViewController.swift
//  TableViewAction
//
//  Created by Avanish Patel on 10/17/18.
//  Copyright © 2018 Avanish Patel. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var heroName: UILabel!
    
    
    @IBOutlet weak var profilePic: UIImageView!
    
    @IBOutlet weak var heroDesc: UILabel!
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        heroName.text! = superHeros[indexNumber].capitalized
        heroDesc.text = superHeros[indexNumber].capitalized + heroDescription
        profilePic.image = UIImage(named:superHeros[indexNumber]+".png")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
