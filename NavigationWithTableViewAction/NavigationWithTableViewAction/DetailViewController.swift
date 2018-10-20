//
//  DetailViewController.swift
//  NavigationWithTableViewAction
//
//  Created by Avanish Patel on 10/18/18.
//  Copyright © 2018 Avanish Patel. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var superHeroName: UILabel!
    
    
    @IBOutlet weak var superHeroImage: UIImageView!
    

    @IBOutlet weak var superHeroDesc: UILabel!
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        let superHero = superHeros[superHeroIndex]
        
        superHeroName.text = superHero.capitalized
        superHeroDesc.text = superHero + heroDescription
        superHeroImage.image = UIImage(named: superHero+".png")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
