//
//  NLBRootController.swift
//  NanLifeBox
//
//  Created by Sniper on 2018/8/26.
//  Copyright © 2018 Sniper. All rights reserved.
//

import UIKit

class NLBRootController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.setupUI()
        self.setupData()
    }

    func setupUI() -> Void {
        
    }
    
    func setupData() -> Void {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
