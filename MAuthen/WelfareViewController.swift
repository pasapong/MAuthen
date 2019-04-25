//
//  WelfareViewController.swift
//  MAuthen
//
//  Created by Pasapong on 25/4/2562 BE.
//  Copyright © 2562 Pasapong. All rights reserved.
//

import UIKit

class WelfareViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        readDataFromJSON()

        // Do any additional setup after loading the view.
    } // Main Method
    
    
    func readDataFromJSON() -> Void {
        print("readData Work")
        
        let urlString: String = "https://api.wvo.thaigov.net/welfare/history/10/102"
        guard let urlObject = URL(string: urlString) else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: urlObject) { (data, response, error) in
            
            guard let dataResponse = data else {
                print("Error")
                return
                
            }
            
            do {
                
                let jsonResponse = try JSONSerialization.jsonObject(with: dataResponse, options: [])
                
      //          print(jsonResponse)
                
     //           let myDictionary: Dictionary = jsonResponse as! Dictionary
                
                guard let myDic: Dictionary =  jsonResponse as! Dictionary<String, Any> else {
                    
                    return
                }
                
  //              print(myDic["contacts"]!)
                
                guard let jsonArray = myDic["contacts"]! as? [[String:Any]] else {return}
                
                print("jasonArray ==> \(jsonArray)")
 //               print("jsonArray[0] ==> \(jsonArray[0])")
                
                let myDic2: Dictionary<String, Any>?
                
                for myDic2: Dictionary in jsonArray{
                    guard let idShow = myDic2["id"] else {
                        return}
                    
                    print(idShow)
                    
                }
                
                
            } catch let myError {
                
                print(myError)
                
            }
            
            
        }   // end of task
        task.resume()
        
        
    } // ReadData
    

  

} // Main Class
