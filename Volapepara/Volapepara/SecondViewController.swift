//
//  SecondViewController.swift
//  Volapepara
//
//  Created by Avanish Patel on 10/18/18.
//  Copyright © 2018 Avanish Patel. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var largeImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        largeImage.image = UIImage(named: images[selectedIndex]+".jpg")
        navigationItem.title = images[selectedIndex]
        
        // set title of navbar as small size
        navigationItem.largeTitleDisplayMode = .never
    }
    
    
    @IBAction func saveImage(_ sender: Any) {
        
        UIImageWriteToSavedPhotosAlbum(largeImage.image!,nil,nil,nil)
        
        let alert = UIAlertController(title: "Saved", message: "Your Wallpaper has been saved to Photos", preferredStyle: UIAlertController.Style.alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        
        self.present(alert, animated: true, completion: nil)
    }
    
}
