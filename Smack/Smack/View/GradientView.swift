//
//  GradientView.swift
//  Smack
//
//  Created by Zach Cervi on 10/10/18.
//  Copyright © 2018 Zach Cervi. All rights reserved.
//

import UIKit

@IBDesignable
class GradientView: UIView {

    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.3631127477, green: 0.4045833051, blue: 0.8775706887, alpha: 0.85){
        didSet{
            self.setNeedsLayout()
        }
    }
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.1725490196, green: 0.831372549, blue: 0.8470588235, alpha: 1){
        didSet{
            self.setNeedsLayout()
        }
    }
    
    override func layoutSubviews() {
        //create Gradient
        let gradientLayer = CAGradientLayer()
        //Gradient Colors
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        //Gradient Points
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        //Gradient size
        gradientLayer.frame = self.bounds
        //put gradient into sublayer
        self.layer.insertSublayer(gradientLayer, at: 0)
    }

}
