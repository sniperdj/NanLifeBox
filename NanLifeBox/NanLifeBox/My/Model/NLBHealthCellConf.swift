//
//  NLBHealthCellConf.swift
//  NanLifeBox
//
//  Created by Sniper on 14/04/2018.
//  Copyright © 2018 Sniper.Edu. All rights reserved.
//

import UIKit

class NLBHealthCellConf: NLBCellConfigurator {
    override func configure(cell: UIView, forDisplaying model: NSObject) {
        if model.isKind(of: NSDictionary) {
            let aCell = cell as! UITableViewCell
            let part = model as! NSDictionary
            
            aCell.textLabel?.text = part.object(forKey: "name") as! String
            let strValue = part.object(forKey: "value") as! String
            aCell.detailTextLabel?.text = strValue.appending("级")
        }
    }
}
