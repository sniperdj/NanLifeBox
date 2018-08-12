//
//  ZNTabBarItem.swift
//  NanLifeBox
//
//  Created by Sniper on 16/12/2017.
//  Copyright © 2017 Sniper.Edu. All rights reserved.
//

import UIKit

class ZNTabBarItem: UIView {
    
    let itemTitle : String!
    let itemImage : UIImage!
    let itemSelectedImage : UIImage!
    
    required init?(coder aDecoder: NSCoder) {
        self.itemTitle = ""
        self.itemImage = UIImage()
        self.itemSelectedImage = UIImage()
        super.init(coder: aDecoder)
        self.setupUI()
    }
    
    init(itemTitle:String, itemImage: UIImage, itemSelectedImage: UIImage) {
        self.itemTitle = itemTitle
        self.itemImage = itemImage
        self.itemSelectedImage = itemSelectedImage
        super.init(frame: .zero)
        self.setupUI()
    }
    
    func setupUI() {
        
    }
    
}
