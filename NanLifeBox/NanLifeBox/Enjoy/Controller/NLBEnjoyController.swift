//
//  NLBEnjoyController.swift
//  NanLifeBox
//
//  Created by Sniper on 2018/8/26.
//  Copyright © 2018 Sniper. All rights reserved.
//

import UIKit
import ReactiveCocoa

class NLBEnjoyController: NLBRootController {
    
    enum Destination {
        case joke
    }
    
    let enjoyViewModel = NLBEnjoyViewModel()
    var enjoyNavigator : NLBEnjoyNavigator? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func setupUI() {
        
        view.backgroundColor = UIColor.cyan
        
        let jokeBtn = UIButton()
        view.addSubview(jokeBtn)
        jokeBtn.snp.makeConstraints { (make) in
            make.center.equalTo(self.view)
            make.width.equalTo(120)
            make.height.equalTo(40)
        }
        jokeBtn.setTitle("笑话大全", for: .normal)
        jokeBtn.backgroundColor = UIColor.orange
        
        enjoyNavigator = NLBEnjoyNavigator(navigationController: self.navigationController!)
        
        let jokeBtnClickSignal = jokeBtn.reactive.controlEvents(.touchUpInside)
        jokeBtnClickSignal.observe { (signal) in
            self.enjoyNavigator?.navigate(to: .joke)
//            let jokeListController = NLBJokeListController()
//            self.navigationController?.pushViewController(jokeListController, animated: true)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

class NLBEnjoyNavigator: Navigator {
    private weak var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func navigate(to destination: NLBEnjoyController.Destination) {
        let destVC = self.makeController(for: .joke)
        self.navigationController?.pushViewController(destVC, animated: true)
    }
    
    func makeController(for destination: Destination) -> UIViewController {
        switch destination {
        case .joke:
            let jokeListController = NLBJokeListController(nibName: nil, bundle: nil)
            return jokeListController
        default:
            return NLBJokeListController()
        }
    }
}

