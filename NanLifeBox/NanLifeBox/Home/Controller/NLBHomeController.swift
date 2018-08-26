//
//  NLBHomeController.swift
//  NanLifeBox
//
//  Created by Sniper on 2018/8/26.
//  Copyright © 2018 Sniper. All rights reserved.
//

import UIKit

class NLBHomeController: NLBRootController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.orange
        
        let welcomeView = UILabel()
        view.addSubview(welcomeView)
        welcomeView.snp.makeConstraints { (make) in
            make.center.equalTo(self.view)
        }
        welcomeView.text = "欢迎使用木南生活盒子!"
        
//        let aData = NLBNetwork()
//        aData.url(url: "www.baidu.com").body(bodyParams: ["a" : "1"]).fetchData { (responseStatus, responseObj) in
//            switch responseStatus {
//            case .NLBNetworkResponseSuccess:
//                print("success")
//            case .NLBNetworkResponseErro:
//                print("error")
//            case .NLBNetworkResponseFail:
//                print("fail")
//            }
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
