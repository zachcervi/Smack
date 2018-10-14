//
//  AvatarPickerVC.swift
//  Smack
//
//  Created by Zach Cervi on 10/13/18.
//  Copyright © 2018 Zach Cervi. All rights reserved.
//

import UIKit

class AvatarPickerVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
  
    

    //Outlets
    @IBOutlet weak var avatarCollection: UICollectionView!
    @IBOutlet weak var segmentController: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        avatarCollection.delegate = self
        avatarCollection.dataSource = self

    }
    
    @IBAction func backPressed(_ sender: Any) {
    dismiss(animated: true, completion: nil)
    }
    
    @IBAction func segmentedPressed(_ sender: Any) {
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 28
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "avatarCell", for: indexPath) as? AvatarCell {
            return cell
        }
        return AvatarCell()
       
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    

}
