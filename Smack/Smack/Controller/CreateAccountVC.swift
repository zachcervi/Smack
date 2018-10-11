//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Zach Cervi on 10/10/18.
//  Copyright © 2018 Zach Cervi. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    
    @IBAction func closePressed(_ sender: Any) {
       performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
   

}
