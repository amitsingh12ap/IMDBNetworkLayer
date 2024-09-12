//
//  NetworkError.swift
//  JCNetworkLayer
//
//  Created by Amit Singh1 on 11/09/24.
//

import Foundation

enum NetworkError: Error {
    case invalidURL
    case requestFailed(Error)
    case decodingFailed(Error)
    case failedWithErrorCode(Int?, Error? = nil)
    case invalidRespose
}

