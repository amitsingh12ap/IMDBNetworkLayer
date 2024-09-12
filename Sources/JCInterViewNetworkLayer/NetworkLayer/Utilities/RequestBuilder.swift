//
//  RequestBuilder.swift
//  JCNetworkLayer
//
//  Created by Amit Singh1 on 11/09/24.
//

import Foundation

struct RequestBuilder {
    static func buildRequest(for endpoint: Endpoints) -> URLRequest {
        
        var request = URLRequest(url: endpoint.url,
                                                cachePolicy: .useProtocolCachePolicy,
                                            timeoutInterval: 10.0)
        
        request.httpMethod = "GET"
        request.addHeaders([
            "x-rapidapi-key": "70612cb596msh2412c74e1e2f567p1abf13jsn08e0d0f787a1",
            "x-rapidapi-host": "ott-details.p.rapidapi.com"
        ])
        return request as URLRequest
    }
}

