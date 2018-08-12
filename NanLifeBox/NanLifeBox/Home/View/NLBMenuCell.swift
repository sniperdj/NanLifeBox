//
//  NLBMenuCell.swift
//  NanLifeBox
//
//  Created by Sniper on 23/03/2018.
//  Copyright © 2018 Sniper.Edu. All rights reserved.
//

import UIKit

class NLBMenuCell: UICollectionViewCell {

    var strImgUrl: String?
    var strCellTitle: String?
    
    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var bottomTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
