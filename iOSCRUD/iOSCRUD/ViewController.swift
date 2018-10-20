//
//  ViewController.swift
//  iOSCRUD
//
//  Created by Avanish Patel on 10/18/18.
//  Copyright © 2018 Avanish Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource, ModelDelegate {
  
    @IBOutlet weak var tableViewHome: UITableView!
    let modelCrud = ModelCRUD()
    var modelArray = [Model]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        modelCrud.getModels()
        modelCrud.delegate = self
        
    }
    
    func getAllModels(model: [Model]) {
        self.modelArray = model
        tableViewHome.reloadData()
    }
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return (modelArray.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = modelArray[indexPath.row].name
        
        return cell
    }
    


}

