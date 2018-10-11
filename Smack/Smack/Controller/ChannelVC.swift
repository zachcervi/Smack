//
//  ChannelVC.swift
//  Smack
//
//  Created by Zach Cervi on 10/10/18.
//  Copyright © 2018 Zach Cervi. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    
    //Outlets
    @IBOutlet weak var loginBtn: UIButton!
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue){}
    override func viewDidLoad() {
        super.viewDidLoad()
        //adjust the size of the rear view controller
        self.revealViewController()?.rearViewRevealWidth = self.view.frame.size.width - 60
    }
    @IBAction func loginBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
    


}
