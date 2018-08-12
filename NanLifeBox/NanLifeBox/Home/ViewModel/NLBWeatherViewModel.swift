//
//  NLBWeatherViewModel.swift
//  NanLifeBox
//
//  Created by Sniper on 04/04/2018.
//  Copyright © 2018 Sniper.Edu. All rights reserved.
//

import UIKit
import ReactiveSwift

class NLBWeatherViewModel: NSObject {
    var city = MutableProperty<String>("")
    var temperature = MutableProperty<String>("")
    var weather = MutableProperty<String>("")
}
