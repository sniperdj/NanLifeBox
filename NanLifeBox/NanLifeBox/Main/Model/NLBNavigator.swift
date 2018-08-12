//
//  NLBNavigator.swift
//  NanLifeBox
//
//  Created by Sniper on 23/03/2018.
//  Copyright © 2018 Sniper.Edu. All rights reserved.
//

import Foundation
import UIKit

protocol NLBNavigator {
    associatedtype Destination
    
    func navigateTo(destination: Destination)
}
