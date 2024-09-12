//
//  URLRequest+Extensions.swift
//  JCNetworkLayer
//
//  Created by Amit Singh1 on 11/09/24.
//

import Foundation

extension URLRequest {
    mutating func addHeaders(_ headers: [String: String]) {
        for (key, value) in headers {
            self.setValue(value, forHTTPHeaderField: key)
        }
    }
}

