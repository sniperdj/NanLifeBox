//
//  NLBRootViewController.swift
//  NanLifeBox
//
//  Created by Sniper on 2017/8/1.
//  Copyright © 2017年 Sniper.Edu. All rights reserved.
//

import UIKit

class NLBRootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.bindingViewModel()
        self.setupData()
    }
    // subclass override 
    func bindingViewModel() {
        
    }
    
    func setupData() {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func delete(_ sender: Any?) {
        print("delete class : \(self)")
    }

}
