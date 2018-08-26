//
//  NLBRootController.swift
//  NanLifeBox
//
//  Created by Sniper on 2018/8/26.
//  Copyright © 2018 Sniper. All rights reserved.
//

import UIKit

protocol Navigator {
    associatedtype Destination
    
    func navigate(to destination: Destination)
}

class NLBRootController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.setupUI()
        self.bindViewModels()
        self.setupData()
    }

    func setupUI() -> Void {
        
    }
    
    func bindViewModels() {
        
    }
    
    func setupData() -> Void {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        print("memory warning : \(self)")
    }

}

extension NLBRootController {
    func addPluginController(_ child: UIViewController) {
        addChildViewController(child)
        view.addSubview(child.view)
        child.didMove(toParentViewController: self)
    }
    
    func removeThePluginController() {
        guard parent != nil else {
            return
        }
        
        willMove(toParentViewController: nil)
        removeFromParentViewController()
        view.removeFromSuperview()
    }
}
