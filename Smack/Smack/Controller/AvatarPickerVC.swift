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
    
    //Variables
    var avatarType = AvatarType.dark
    
    override func viewDidLoad() {
        super.viewDidLoad()
        avatarCollection.delegate = self
        avatarCollection.dataSource = self

    }
    
    @IBAction func backPressed(_ sender: Any) {
    dismiss(animated: true, completion: nil)
    }
    
    @IBAction func segmentedPressed(_ sender: Any) {
        if segmentController.selectedSegmentIndex == 0{
            avatarType = .dark
            avatarCollection.reloadData()
        }else{
            avatarType = .light
            avatarCollection.reloadData()
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        var numOfColumns: CGFloat = 3
        if UIScreen.main.bounds.width > 320 {
        numOfColumns = 4
        }
        let spaceBetweenCell: CGFloat = 10
        let padding: CGFloat = 40
        let cellDimension = ((collectionView.bounds.width - padding) - (numOfColumns - 1) * spaceBetweenCell) / numOfColumns
        return CGSize(width: cellDimension, height: cellDimension)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if avatarType == .dark{
            UserDataService.instance.setAvatarName(avatarName: "dark\(indexPath.item)")
        }
        else{
            UserDataService.instance.setAvatarName(avatarName: "light\(indexPath.item)")
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 28
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "avatarCell", for: indexPath) as? AvatarCell {
            cell.configureCell(index: indexPath.item, type: avatarType)
            return cell
        }
        return AvatarCell()
       
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    

}
