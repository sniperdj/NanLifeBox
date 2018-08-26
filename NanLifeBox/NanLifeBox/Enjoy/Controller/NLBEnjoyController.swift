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
    
    override func setupUI() {
        let jokeBtn = UIButton()
        view.addSubview(jokeBtn)
        jokeBtn.snp.makeConstraints { (make) in
            make.center.equalTo(self.view)
            make.width.equalTo(120)
            make.height.equalTo(40)
        }
        jokeBtn.setTitle("笑话大全", for: .normal)
        jokeBtn.backgroundColor = UIColor.orange
    }
    
    override func setupData() {
//        let jokeParams = NLBJokeParameterDatas()
//        jokeParams.time = "12345"
//        let jokeFetchData = NLBNetwork()
//        let loadingVC = NLBLoadingController()
//        addPluginController(loadingVC)
//        DispatchQueue.main.async {
//            loadingVC.showLoading()
//        }
//        jokeFetchData.url(url: jokeParams.requestUrl())
//            .fetchMethod(method: .get)
//            .body(bodyParams: jokeParams.parameters())
//            .fetchData(responser: { (responseStatus, response) in
//                DispatchQueue.main.async {
//                    loadingVC.hideLoading()
//                    self.removeThePluginController()
//                }
//                switch responseStatus {
//                case .NLBFetchResponseSuccess:
//                    print("success : \(String(describing: response.data))")
//                case .NLBFetchResponseErro:
//                    print("error : \(String(describing: response.data))")
//                case .NLBFetchResponseFail:
//                    print("fail : \(String(describing: response.error))")
//                }
//        })
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
