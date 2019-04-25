//
//  ViewController.swift
//  MAuthen
//
//  Created by Pasapong on 25/4/2562 BE.
//  Copyright © 2562 Pasapong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
//    For Outlet

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }   //Main Method

// For Action
    
    @IBAction func signUpButton(_ sender: UIButton) {
  
       print("You Click SignUp")
       performSegue(withIdentifier: "GoRegister", sender: nil)
        
    }
    
    
    @IBAction func signInButton(_ sender: UIButton) {
        goToWelfare()
        
    }
    
    func goToWelfare() -> Void {
        performSegue(withIdentifier: "GoWelfare", sender: nil)
    }
    
    
    
    
}   //Main Class

