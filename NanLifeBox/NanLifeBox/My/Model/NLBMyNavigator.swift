//
//  NLBMyNavigator.swift
//  NanLifeBox
//
//  Created by Sniper on 14/04/2018.
//  Copyright © 2018 Sniper.Edu. All rights reserved.
//

import UIKit

class NLBMyNavigator: NLBNavigator {
    
    private weak var navigationController: UINavigationController!
    
    enum Destination {
        case myPage
        case healthPage
        case foreignLanguagePage
        case subScribePage
        case settingPage
    }
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func navigateTo(destination: NLBMyNavigator.Destination) {
        let nextController = self.makeViewController(destination: destination)
        self.navigationController.pushViewController(nextController, animated: true)
    }
    
    func makeViewController(destination: Destination) -> UIViewController {
        switch destination {
        case .myPage:
            let weatherControler = NLBWeatherController(nibName: nil, bundle: nil);
            weatherControler.title = "天气"
            weatherControler.view.backgroundColor = UIColor.orange
            return weatherControler
        case .healthPage:
            let healthController = NLBHealthController(nibName: nil, bundle: nil);
            healthController.title = "健身资料"
            healthController.view.backgroundColor = UIColor.white
            return healthController
        default:
            let weatherControler = NLBWeatherController(nibName: nil, bundle: nil);
            weatherControler.title = "其他"
            weatherControler.view.backgroundColor = UIColor.green
            return weatherControler
        }
    }
    

}
