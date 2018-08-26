//
//  NLBNetwork.swift
//  NanLifeBox
//
//  Created by Sniper on 2018/8/26.
//  Copyright © 2018 Sniper. All rights reserved.
//

import UIKit
import Alamofire

enum NLBNetworkResponse {
    case NLBNetworkResponseSuccess
    case NLBNetworkResponseError
    case NLBNetworkResponseFail
}

typealias NLBResponser = (NLBNetworkResponse, DataResponse<Any>) -> Void

class NLBNetwork {
    var requestUrl : String = ""
    var bodyParameters : Dictionary<String, Any> = [:]
    var headerParameters : Dictionary<String, String> = [:]
    var httpMethod : HTTPMethod = .post
    
    func aaa() ->Void {
        
    }
    
    func url(url : String) -> NLBNetwork {
        self.requestUrl = url
        return self
    }
    
    func body(bodyParams : Dictionary<String, Any>) -> NLBNetwork {
        self.bodyParameters = bodyParams
        return self
    }
    
    func headers(headers : Dictionary<String, String>) -> NLBNetwork {
        self.headerParameters = headers
        return self
    }
    
    func fetchMethod(method : HTTPMethod) -> NLBNetwork {
        self.httpMethod = method
        return self
    }
    
    func fetchData(responser : @escaping NLBResponser) -> NLBNetwork {
        request(self.requestUrl, method: self.httpMethod, parameters: self.bodyParameters, encoding: URLEncoding.default, headers: headerParameters).responseJSON { (responseObj) in
            if (responseObj.error != nil) {
                let responseSuccess = NLBNetworkResponse.NLBNetworkResponseFail
                responser(responseSuccess, responseObj)
            } else {
                let responseSuccess = NLBNetworkResponse.NLBNetworkResponseSuccess
                responser(responseSuccess, responseObj)
            }
            
        }
        return self
    }
}
