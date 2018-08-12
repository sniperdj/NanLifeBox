//
//  NLBWeatherData.swift
//  NanLifeBox
//
//  Created by Sniper on 04/04/2018.
//  Copyright © 2018 Sniper.Edu. All rights reserved.
//

import UIKit

class TodayWeatherInfo: NSObject {
    var temperature :String?       // 温度
    var weather :String?           // 天气(多云  晴 等等)
    var city :String?              // 城市
    var dressing_advice :String?   // 穿衣建议
}

class FutureWeatherInfo: NSObject {
    var temperature :String?       // 温度
    var weather :String?           // 天气(多云  晴 等等)
    var weak :String?              // 星期几
    var date :String?              // 日期
}

class NLBWeatherInfo: NLBMainInfo {
    var resultcode: String?
    var reason: String?
    var result: Dictionary<String, Any>
    var error_code: Int?
    var todayWeather: TodayWeatherInfo?
    var futureWeatherList = [FutureWeatherInfo]()
    
    init(resultcode: String, reason: String, result: Dictionary<String, Any>, error_code: Int) {
        self.resultcode = resultcode
        self.reason = reason
        self.result = result
        self.error_code = error_code
    }
    
    convenience init(dict: Dictionary<String, Any>) {
        self.init(resultcode: "999", reason: "初始值", result: Dictionary(), error_code: 0)
        self.setValuesForKeys(dict)
        let todayDict = dict["today"]
        print("today : \(String(describing: todayDict))")
        let todayWeatherInfo = TodayWeatherInfo()
        todayWeatherInfo.setValuesForKeys(todayDict as! [String : Any])
        let futureArr = dict["future"]
        print("future : \(String(describing: futureArr))")
        for dic in futureArr as! Array<Any?> {
            let futureWeatherInfo = FutureWeatherInfo()
            futureWeatherInfo.setValuesForKeys(dic as! [String : Any])
            futureWeatherList.append(futureWeatherInfo)
        }
    }
}

class NLBWeatherData: NLBMainData {
    override func postUrl() -> String {
        // http://api.data.cma.cn:8090/api?userId=<帐号>&pwd=<密码>&dataFormat=json&interfaceId=getSurfEleByTimeRangeAndStaID&dataCode=SURF_CHN_MUL_HOR&timeRange=<时间范围>&staIDs=<台站列表>&elements=Station_Id_C,Year,Mon,Day,Hour,<要素列表>
        return kWeather_POSTURL
        
    }
    
    override func postParameters() -> Dictionary<String, Any> {
        var dict = Dictionary<String, Any>()
        dict["userId"] = kWeather_USERNAME
        dict["pwd"] = kWeather_PWD
        dict["dataFormat"] = "json"
        dict["interfaceId"] = kInterfaceId
        dict["dataCode"] = kDataCode
        dict["timeRange"] = "111"
        dict["staIDs"] = "111"
        dict["elements"] = "111"
        return dict
    }
}
