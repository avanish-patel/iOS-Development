//
//  ViewController.swift
//  CollectionView
//
//  Created by Avanish Patel on 10/18/18.
//  Copyright © 2018 Avanish Patel. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    let superHeros = ["batman","captainA","deadpool","hulk","ironman","joker","spyderman","batman","captainA","deadpool","hulk","ironman","joker","spyderman","batman","captainA","deadpool","hulk","ironman","joker","spyderman"]
    
    // return Number of cells in collection view
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return (superHeros.count)
    }
    
    // set item in view
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CellCollectionView
        
        cell.imageView.image = UIImage(named: superHeros[indexPath.row]+".png")
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // fix the sizing and distrubute the image equally
        let itemSize = UIScreen.main.bounds.width/3 - 3
        
        let layout = UICollectionViewFlowLayout()
        
        layout.sectionInset = UIEdgeInsets.init(top: 20, left: 0, bottom: 10, right: 0)
        layout.itemSize = CGSize(width: itemSize, height: itemSize)
        layout.minimumLineSpacing = 3
        layout.minimumInteritemSpacing = 3
        
        collectionView.collectionViewLayout = layout
    }


}

