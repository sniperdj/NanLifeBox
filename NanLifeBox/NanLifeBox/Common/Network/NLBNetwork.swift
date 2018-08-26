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
    case NLBNetworkResponseErro
    case NLBNetworkResponseFail
}

//enum NLBNetworkError : NLBNetworkResponse {
//    case NLBNetworkErrorTimeOut
//    case NLBNetworkErrorUnavialable
////    case NLBNetworkErrorTimeOut(Error)
//}

typealias NLBResponseHandler = (NLBNetworkResponse, DataResponse<Any>) -> Void

class NLBNetwork {
    private var requestUrl : String = ""
    private var bodyParameters : Dictionary<String, Any> = [:]
    private var headerParameters : Dictionary<String, String> = [:]
    private var httpMethod : HTTPMethod = .post
    
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
    
    func fetchData(responser : @escaping NLBResponseHandler) -> NLBNetwork {
        print("fetch url : \(self.requestUrl)")
        print("fetch parameters : \(self.bodyParameters)")
        request(self.requestUrl, method: self.httpMethod, parameters: self.bodyParameters, encoding: URLEncoding.default, headers: headerParameters).responseJSON { (responseObj) in
            print("fetch response : \(responseObj)")
            if (responseObj.error != nil) {
                responser(NLBNetworkResponse.NLBNetworkResponseFail, responseObj)
            } else {
                responser(NLBNetworkResponse.NLBNetworkResponseSuccess, responseObj)
            }
            
        }
        return self
    }
}
