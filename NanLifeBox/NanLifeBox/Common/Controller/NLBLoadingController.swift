//
//  NLBLoadingController.swift
//  NanLifeBox
//
//  Created by Sniper on 2018/8/26.
//  Copyright © 2018 Sniper. All rights reserved.
//

import UIKit
import SnapKit

class NLBLoadingController: UIViewController {
    
    private lazy var indicator = UIActivityIndicatorView(activityIndicatorStyle: .gray)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addSubview(indicator)
        indicator.snp.makeConstraints { (make) in
            make.center.equalTo(self.view)
            make.width.height.equalTo(120)
        }
    }

    func showLoading() -> Void {
        self.indicator.startAnimating()
    }
    
    func hideLoading() -> Void {
        self.indicator.stopAnimating()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
