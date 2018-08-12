//
//  NLBMainData.swift
//  NanLifeBox
//
//  Created by Sniper on 2017/8/4.
//  Copyright © 2017年 Sniper.Edu. All rights reserved.
//

import UIKit
import Alamofire

class NLBMainInfo: NSObject {
    
}

typealias RespClosure = (_ code: String, _ resp: NLBMainInfo) -> Void

class NLBMainData: NSObject, URLSessionTaskDelegate {
    
    func postUrl() -> String {
        return ""
    }
    
    func postParameters() -> Dictionary<String, Any> {
        return [:]
    }
    
    func postData(resp: @escaping RespClosure) {
        Alamofire.request(self.postUrl(), method: .post, parameters: self.postParameters(), encoding: URLEncoding.default, headers: nil).responseJSON { (response) in
            print("Request: \(String(describing: response.request))")   // original url request
            print("Response: \(String(describing: response.response))") // http url response
            print("Result: \(response.result)")                         // response serialization result
            print("Value: \(response.result.value)")
//            resp(response.result.description, response.result.value)
        }
    }
    
    func getData(resp: @escaping RespClosure) {
        let strUrl = self.postUrl()
        print("postUrl : \(strUrl)")
        
        let parameters = self.postParameters()
        print("postparameters : \(parameters)")
        
        Alamofire.request(strUrl, method: .get, parameters: parameters).responseJSON { (response) in
//            print("Request: \(String(describing: response.request))")   // original url request
//            print("Response: \(String(describing: response.response))") // http url response
            
            print("Result: \(response.result)")                         // response serialization result
//            if let json = response.result.value {
//                print("JSON: \(json)") // serialized json response
//            }
            
            let jsonResp = try? JSONSerialization.jsonObject(with: response.data!, options: .mutableContainers) as! Dictionary<String, AnyObject>
            
            if let respInfo : NLBMainInfo = self.initModelOfResp(obj: jsonResp!) {
                resp(response.result.description, respInfo)
            }
            
//            resp(response.result.description, response.result.value)
//            if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
//                print("Result_Data: \(utf8Text)") //
//            }
        }
    }
    
    func initModelOfResp(obj : Dictionary<String, AnyObject>) -> NLBMainInfo {
        return NLBMainInfo()
    }
    
}
