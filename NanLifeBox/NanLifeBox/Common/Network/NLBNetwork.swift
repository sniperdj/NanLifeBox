//
//  NLBNetwork.swift
//  NanLifeBox
//
//  Created by Sniper on 2018/8/26.
//  Copyright © 2018 Sniper. All rights reserved.
//

import UIKit
import Alamofire

enum NLBFetchResponse {
    case NLBFetchResponseSuccess
    case NLBFetchResponseErro
    case NLBFetchResponseFail
}

//enum NLBNetworkError : NLBNetworkResponse {
//    case NLBNetworkErrorTimeOut
//    case NLBNetworkErrorUnavialable
////    case NLBNetworkErrorTimeOut(Error)
//}

typealias NLBResponseHandler = (NLBFetchResponse, DataResponse<Any>) -> Void

class NLBNetwork {
    private var requestUrl : String = ""
    private var bodyParameters : Dictionary<String, Any> = [:]
    private var headerParameters : Dictionary<String, String> = [:]
    private var httpMethod : HTTPMethod = .post
    
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
    
    func fetchData(responser : @escaping NLBResponseHandler) -> Void {
        print("fetch url : \(self.requestUrl)")
        print("fetch parameters : \(self.bodyParameters)")
        request(self.requestUrl, method: self.httpMethod, parameters: self.bodyParameters, encoding: URLEncoding.default, headers: headerParameters).responseJSON { (responseObj) in
//            print("fetch response : \(responseObj)")
            if (responseObj.error != nil) {
                responser(NLBFetchResponse.NLBFetchResponseFail, responseObj)
            } else {
                responser(NLBFetchResponse.NLBFetchResponseSuccess, responseObj)
            }
            
        }
//        return self
    }
}
