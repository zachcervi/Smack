//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Zach Cervi on 10/10/18.
//  Copyright © 2018 Zach Cervi. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    //Outlets
    @IBOutlet weak var userNameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var userImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    
    @IBAction func closePressed(_ sender: Any) {
       performSegue(withIdentifier: UNWIND, sender: nil)
    }
    @IBAction func pickAvatarPressed(_ sender: Any) {
    }
    
    @IBAction func createAccountPressed(_ sender: Any) {
        guard let email = emailTxt.text , emailTxt.text != "" else {return}
        guard let password = passwordTxt.text , passwordTxt.text != "" else {return}
        
        AuthService.instance.registerUser(email: email, password: password) { (success) in
            if(success){
                print("registered user!")
                AuthService.instance.loginUser(email: email, password: password, completion: { (success) in
                    if success {
                        print("Logged In!", AuthService.instance.authToken)
                    }
                })
            }
        }
    }
    @IBAction func pickBgColorPressed(_ sender: Any) {
    }
    

}
