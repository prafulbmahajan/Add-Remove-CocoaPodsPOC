//
//  AlmofireRequest.swift
//  AddCocoaPods
//
//  Created by Praful Mahajan on 01/04/20.
//  Copyright © 2020 prafulmahajan. All rights reserved.
//

import Foundation
import Alamofire

class RequestManager {

    class func withGET(endPointUrl : String, param : Parameters? = nil, headers : NSMutableDictionary? = nil, completionHandler: @escaping (String?, Error?, Int?) -> Void)
    {
        let configuration = URLSessionConfiguration.default
        configuration.timeoutIntervalForRequest = 60.0

        var parameters : Parameters? = nil
        if let temp = param{
            parameters = temp as Parameters
        }

        let sessionManager = Alamofire.SessionManager(configuration: configuration)
        sessionManager.request(endPointUrl, method: .get, parameters: parameters, encoding: URLEncoding.default, headers: nil).responseJSON {
            (response) in
            sessionManager.session.invalidateAndCancel()
            sessionManager.session.finishTasksAndInvalidate()
            switch response.result {
            case .success(_):
                if let data = response.data, let json = String(data: data, encoding: String.Encoding.utf8){
                    completionHandler(json,nil, response.response?.statusCode)
                }
                else {
                    completionHandler(nil, response.error, response.response?.statusCode)
                }
                break
            case .failure(let error):
                if error._code == NSURLErrorTimedOut || error._code == NSURLErrorNotConnectedToInternet {
                    completionHandler(nil, error, response.response?.statusCode)
                } else {
                    completionHandler(nil, error, response.response?.statusCode)
                }
                break
            }
        }
    }
}
