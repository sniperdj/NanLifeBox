//
//  NLBEnjoyController.swift
//  NanLifeBox
//
//  Created by Sniper on 2018/8/26.
//  Copyright © 2018 Sniper. All rights reserved.
//

import UIKit

class NLBEnjoyController: NLBRootController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func setupData() {
        let jokeParams = NLBJokeParameterDatas()
        jokeParams.time = "12345"
        let jokeFetchData = NLBNetwork()
        jokeFetchData.url(url: jokeParams.requestUrl())
            .fetchMethod(method: .get)
            .body(bodyParams: jokeParams.parameters())
            .fetchData(responser: { (responseStatus, response) in
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
