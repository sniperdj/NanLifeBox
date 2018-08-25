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

