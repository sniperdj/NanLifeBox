//
//  NLBJokeListController.swift
//  NanLifeBox
//
//  Created by Sniper on 2018/8/26.
//  Copyright © 2018 Sniper. All rights reserved.
//

import UIKit

class NLBJokeListController: NLBRootController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func setupUI() {
        title = "笑话大全"
    }
    
    override func setupData() {
        let jokeParams = NLBJokeParameterDatas()
        jokeParams.time = "12345"
        let jokeFetchData = NLBNetwork()
        let loadingVC = NLBLoadingController()
        nlb_addPluginController(loadingVC)
        jokeFetchData.url(url: jokeParams.requestUrl())
            .fetchMethod(method: .get)
            .body(bodyParams: jokeParams.parameters())
            .fetchData(responser: { (responseStatus, response) in
                loadingVC.nlb_removePluginController()
                switch responseStatus {
                case .NLBFetchResponseSuccess:
                    print("success : \(String(describing: response.data))")
                case .NLBFetchResponseErro:
                    print("error : \(String(describing: response.data))")
                case .NLBFetchResponseFail:
                    print("fail : \(String(describing: response.error))")
                }
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
