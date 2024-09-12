//
//  URLBuilder.swift
//  JCNetworkLayer
//
//  Created by Amit Singh1 on 11/09/24.
//

import Foundation

struct URLBuilder {
    static func buildURL(for endpoint: Endpoints) -> URL {
        return endpoint.url
    }
}
