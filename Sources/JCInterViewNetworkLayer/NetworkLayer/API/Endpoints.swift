//
//  Endpoints.swift
//  JCNetworkLayer
//
//  Created by Amit Singh1 on 11/09/24.
//

import Foundation

enum Endpoints {
    static let apiKey = "70612cb596msh2412c74e1e2f567p1abf13jsn08e0d0f787a1"
    static let baseURL = "https://ott-details.p.rapidapi.com"
    
    case getMovieDetailsByTitle(title: String)
    case getMovieDetailsById(Id: String)
    case getMovieList
    
    var url: URL {
        switch self {
        case.getMovieList:
            return URL(string: "\(Endpoints.baseURL)/advancedsearch?")!
        case .getMovieDetailsByTitle(let title):
            return URL(string: "\(Endpoints.baseURL)/search?title=\(title)&page=1")!
        case.getMovieDetailsById(let id):
            return URL(string: "\(Endpoints.baseURL)/gettitleDetails?imdbid=\(id)")!
        }
    }
}

