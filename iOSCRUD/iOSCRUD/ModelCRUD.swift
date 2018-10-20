//
//  ModelCRUD.swift
//  iOSCRUD
//
//  Created by Avanish Patel on 10/18/18.
//  Copyright © 2018 Avanish Patel. All rights reserved.
//

import UIKit


protocol ModelDelegate {
    
    func getAllModels(model:[Model])
}

class ModelCRUD: NSObject {
    
    var delegate: ModelDelegate?
    
    func getModels(){
        
        var modelArray = [Model]()
        
        // crate url
        guard let url = URL(string: "https://c15ad0f7-b1a8-45e7-adcf-76165bfd4e36.mock.pstmn.io/model") else { return }
        
        //crate session and add task
        let session = URLSession.shared
        session.dataTask(with: url) { (data, response, error) in
            if let response = response {
                print(response)
            }
            
            if let data = data {
                
                // Execute task on Main Thread : if avoided than data will be laoded in view after view is loaded
                DispatchQueue.main.async {
                    print(data)
                    do {
                        let json = try JSONSerialization.jsonObject(with: data, options: []) as! [Any]
                        print(json)
                        
                        for model in json {
                            
                            let modelDict = model as! [String: String]
                            
                            let modelCast = Model(name: modelDict["name"]!, image:modelDict["image"]!,description:modelDict["description"]!)
                            
                            modelArray.append(modelCast)
                        }
                        
                        self.delegate?.getAllModels(model: modelArray)
                        
                    } catch {
                        print(error)
                    }
                }
                }
               
            }.resume()
    }

}
