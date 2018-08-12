//
//  NLBHomeNavigator.swift
//  NanLifeBox
//
//  Created by Sniper on 23/03/2018.
//  Copyright © 2018 Sniper.Edu. All rights reserved.
//

import Foundation
import UIKit

class NLBHomeNavigator: NLBNavigator {
    private weak var navigationController: UINavigationController!
    
    enum Destination {
        case weatherPage
        case newsPage
        case jokePage
        case moviePage
        case bookPage
    }
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func navigateTo(destination: NLBHomeNavigator.Destination) {
        let nextViewController = self.makeViewController(destination: destination)
        self.navigationController.pushViewController(nextViewController, animated: true)
    }
    
    func makeViewController(destination: Destination) -> UIViewController {
        switch destination {
        case .weatherPage:
            let weatherControler = NLBWeatherController(nibName: nil, bundle: nil);
            weatherControler.title = "天气"
            weatherControler.view.backgroundColor = UIColor.orange
            return weatherControler
        case .newsPage:
            let weatherControler = NLBWeatherController(nibName: nil, bundle: nil);
            weatherControler.title = "新闻"
            weatherControler.view.backgroundColor = UIColor.yellow
            return weatherControler
        default:
            let weatherControler = NLBWeatherController(nibName: nil, bundle: nil);
            weatherControler.title = "其他"
            weatherControler.view.backgroundColor = UIColor.green
            return weatherControler
        }
    }
}
