//
//  MockWebService.swift
//  MockingDemoUITests
//
//  Created by skotakal on 3/15/22.
//

import Foundation

class MockWebService:NetworkService{
    func login(username: String, password: String, completion: @escaping (Result<Void, NetworkError>) -> Void){
        
        if username == "JohnDoe" && password == "password" {
            completion(.success(()))
        }else{
            completion(.failure(.notAuthenticated))
        }
    }
}
