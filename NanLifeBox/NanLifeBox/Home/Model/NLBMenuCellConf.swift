//
//  NLBMenuCellConf.swift
//  NanLifeBox
//
//  Created by Sniper on 04/04/2018.
//  Copyright © 2018 Sniper.Edu. All rights reserved.
//

import Foundation
import UIKit

class NLBMenuCellConf: NLBCellConfigurator {
    override func configure(cell: UIView, forDisplaying model: NSObject) {
        if model.isKind(of: NLBMenuInfo) {
            let aCell = cell as! NLBMenuCell
            let menu = model as! NLBMenuInfo
            aCell.bottomTitle.text = menu.menuName
            aCell.imgView.image = UIImage(named: menu.menuIcon)
//            print(menu)
        }
    }
}
