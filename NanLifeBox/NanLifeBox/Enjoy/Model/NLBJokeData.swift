//
//  NLBJokeData.swift
//  NanLifeBox
//
//  Created by Sniper on 17/12/2017.
//  Copyright © 2017 Sniper.Edu. All rights reserved.
//

import UIKit

enum NLBJokeContentType : Int {
    case textJoke  = 102,
         imageJoke = 103
}

class NLBNeihanInfoGroup: NSObject {
    var text : String!
    var heihan_hot_start_time : String!
    var create_time : String!
    var id : String!
    var favorate_count : String!
    var go_detail_count : String!
    var content : String!
    var comment_count : String!
    var share_count : String!
}

class NLBNeihanInfoOneData: NSObject {
//    var group : NLBNeihanInfoGroup!
    var group : Dictionary<String, AnyObject>!
//    var comments : Array<Dictionary<String, AnyObject>>!
    var type : String!
    var display_time : String!
    var online_time : String!
}

class NLBNeihanInfoData: NSObject {
    var has_more : String!
    var tip : String!
    var max_time : String!
    var min_time : String!
//    var data : Array<NLBNeihanInfoOneData>!
    var data : Array<Dictionary<String, AnyObject>>!
}

class NLBNeihanInfo: NLBMainInfo {
    var message : String!
//    var data : NLBNeihanInfoData!
    var data : Dictionary<String, AnyObject>!
}

class NLBJokeData: NLBMainData {
    
    var contentType : NLBJokeContentType!
    
    
    override func postUrl() -> String {
        return kJOKE_POSTURL
    }
    
    override func postParameters() -> Dictionary<String, Any> {
        var parameters : [String: String] = [String : String]()
        parameters["tag"] = "joke"
        parameters["iid"] = "20090838501"
        parameters["aid"] = "7"
        parameters["os_api"] = "18"
        parameters["live_sdk_version"] = "220"
        parameters["channel"] = "App Store"
        parameters["app_name"] = "joke_essay"
        parameters["vid"] = "F7DEA73E-4AC8-4008-A268-6B62A814B4EB"
        parameters["openudid"] = "5d87bc9a225fe408d880b04e8038c5d730f46c7f"
        parameters["device_type"] = "iPhone 6"
        parameters["device_id"] = "9412025456"
        parameters["ac"] = "WIFI"
        parameters["screen_width"] = "750"
        parameters["version_code"] = "6.4.1"
        parameters["os_version"] = "11.0.1"
//        parameters["city"] = "Guangdong"
        parameters["count"] = "30"
        parameters["double_col_mode"] = "0"
        parameters["essence"] = "1"
        parameters["latitude"] = "22.63724811339443"
        parameters["longitude"] = "114.0094285749264"
        parameters["message_cursor"] = "0"
//        parameters["min_time"] = "0"
//        parameters["max_time"] = "0"
        parameters["mpic"] = "1"
        parameters["video_cdn_first"] = "1"
        parameters["content_type"] = "-102"
        return parameters
    }
    
    override func initModelOfResp(obj: Dictionary<String, AnyObject>) -> NLBMainInfo {
        let jokeInfo = NLBNeihanInfo()
        jokeInfo.setValuesForKeys(obj)
        
        return jokeInfo
    }
}


//class NLBNeihanInfoGroup: NSObject {
//    var text : String!
//    var heihan_hot_start_time : String!
//    var create_time : String!
//    var id : String!
//    var favorate_count : String!
//    var go_detail_count : String!
//    var content : String!
//    var comment_count : String!
//    var share_count : String!
//}
//
//class NLBNeihanInfoOneData: NSObject {
//    var group : Dictionary<String, AnyObject>!
//    var comments : Array<Dictionary<String, AnyObject>>!
//    var type : String!
//    var display_time : String!
//    var online_time : String!
//}
//
//class NLBNeihanInfoData: NSObject {
//    var has_more : String!
//    var tip : String!
//    var max_time : String!
//    var min_time : String!
//    var data : Array<Dictionary<String, AnyObject>>!
//}
//
//class NLBNeihanInfo: NLBMainInfo {
//    var message : String!
//    var data : Dictionary<String, AnyObject>!
//}

