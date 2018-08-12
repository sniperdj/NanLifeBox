//
//  NLBMenuInfo.swift
//  NanLifeBox
//
//  Created by Sniper on 26/03/2018.
//  Copyright © 2018 Sniper.Edu. All rights reserved.
//

import UIKit

class NLBMenuInfo: NLBMainInfo {
    var menuId: String!
    var menuName: String!
    var menuIcon: String!
    
//    init(menuId: String, and menuName: String, and menuIcon: String) {
//        self.menuId = menuId
//        self.menuName = menuName
//        self.menuIcon = menuIcon
//    }
    
    static func makeMenuInfo(dict: Dictionary<String, Any>) -> NLBMenuInfo {
        let menu = NLBMenuInfo()
        menu.setValuesForKeys(dict)
        return menu
    }
}
