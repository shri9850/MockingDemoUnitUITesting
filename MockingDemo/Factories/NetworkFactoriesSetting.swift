//
//  NetworkFactoriesSetting.swift
//  MockingDemo
//
//  Created by skotakal on 3/15/22.
//

import Foundation

class NnetworkFactorySetting{
    static func create()-> NetworkService{
        let env = ProcessInfo.processInfo.environment["ENV"]
        if let enviourment = env {
            if enviourment == "Test"{
                return MockWebService()
            }else{
                return Webservice()
            }
        }else{
            return Webservice()
        }
    }
   
}
