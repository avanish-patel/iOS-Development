//
//  ViewController.swift
//  Volapepara
//
//  Created by Avanish Patel on 10/18/18.
//  Copyright © 2018 Avanish Patel. All rights reserved.
//

import UIKit

let images = ["boris-misevic","ezra-comeau-jeffrey","ian-keefe","ibrahim-rifath","jonathan-j-castellon","josh-edgoose","ricardo-gomez-angel"]
var selectedIndex = 0

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return (images.count)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! HomeImageCell
        
        cell.imageContent.image = UIImage(named: images[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "segue", sender: self)
        selectedIndex = indexPath.row
    }
    
    override func viewDidAppear(_ animated: Bool) {
        navigationItem.largeTitleDisplayMode = .always

    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set title of navbar bigger size
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        // set the size of image dynamically
        let itemSize = UIScreen.main.bounds.width/2 - 2
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets.init(top: 20, left: 0, bottom: 10, right: 0)
        layout.itemSize = CGSize(width: itemSize, height: itemSize)
        layout.minimumLineSpacing = 4
        layout.minimumInteritemSpacing = 4
        collectionView.collectionViewLayout = layout
        
        // call crate serachbar
        search()
      
    }
    
//    func createSearchBar(){
//
//        // button for search
//        let searchButton = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(search))
//
//        navigationItem.rightBarButtonItem = searchButton
//
//    }
    
    func search(){
        // search bar
        let searchControllerTop = UISearchController(searchResultsController: nil)
        navigationItem.searchController = searchControllerTop
        navigationItem.hidesSearchBarWhenScrolling = true
    }

}

