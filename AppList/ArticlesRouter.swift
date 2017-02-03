//
//  ArticlesRouter.swift
//  AppList
//
//  Created by Noturno on 02/02/17.
//  Copyright © 2017 Noturno. All rights reserved.
//

import Foundation
import Alamofire

enum ArticlesRouter: URLRequestConvertible{

    case getAllArticles(userID: String)
    
    var method: Alamofire.HTTPMethod{
    
        switch self {
        case .getAllArticles:
            return .get
        }
    }
    
    var path: String{
    
        switch self {
        case .getAllArticles:
            return "colocar a URL da API"
        }
        
    }
    
    func asURLRequest() throws -> URLRequest {
        var url = URL(string: "Colocar a BASE URL da API")!
        var urlRequest = URLRequest(url: url.appendingPathComponent(path))
        
            switch self{
            case.getAllArticles(let userID):
                
                var parameters = String(describing: urlRequest)
                parameters = parameters.replacingOccurrences(of: "$$", with: userID)
                url = URL(string: parameters)!
                urlRequest = URLRequest(url: url)
                urlRequest.httpMethod = method.rawValue
                return try Alamofire.JSONEncoding.default.encode(urlRequest)
        }
    }
}

