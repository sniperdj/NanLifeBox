//
//  NLBJokeData.swift
//  NanLifeBox
//
//  Created by Sniper on 2018/8/26.
//  Copyright © 2018 Sniper. All rights reserved.
//

import UIKit

class NLBJokeParameterDatas : NLBBaseData {
    private var sort = "asc"
    public var page = 1
    private var pageSize = 20
    public var time = ""
    private var key = JUHE_APPKEY
    
    override func requestUrl() -> String {
        return jokeListUrl
    }
    
    override func parameters() -> Dictionary<String, Any> {
        let params = ["sort" : sort,
                      "page" : page,
                      "pagesize" : pageSize,
                      "time" : time,
                      "key" : key] as [String : Any]
        return params
    }
}

struct NLBJoke {
    var content = "default content"
    var unixtime = "default unixtime"
    var updatetime = "default update time"
}

struct NLBJokeData{
    var error_code = 0
    var reason = "defaultReason"
}
