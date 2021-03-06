//
//  TMPJError.swift
//  swifttemplate
//
//  Created by supertext on 15/3/11.
//  Copyright © 2015年 icegent. All rights reserved.
//

import UIKit

protocol TMPJAlertable {
    var title:String{get}
    var message:String{get}
}
extension TMPJAlertable where Self:Error
{
    var title:String{
        return "提示"
    }
}
enum TMPJServiceCode :String{
    case ok             = "OK"
    case invalidToken   = "INVALID_TOKEN"
    case repeatLogin    = "DUPLICATE_LOGIN"
    case other
    case unknown        = "UNKNOWN_ERROR"
    init(_ value:String?=nil){
        guard let value = value else {
            self = .unknown
            return
        }
        guard let code = TMPJServiceCode(rawValue: value) else {
            self = .other
            return
        }
        self = code
    }
}
enum TMPJError {
    case network(code:Int,info:String)
    case service(code:TMPJServiceCode,info:String)
    case analyze(info:String)
    case device(info:String)
    case logic(info:String)
    case image(info:String)
}
extension TMPJError : TMPJAlertable
{
    var message: String{
        switch self {
        case let .network(_,info):
            return info
        case let .service(_,info):
            return info
        case let .analyze(info):
            return info
        case let .device(info):
            return info
        case let .logic(info):
            return info
        case let .image(info):
            return info
        }
    }
}
extension TMPJError : Error{}
