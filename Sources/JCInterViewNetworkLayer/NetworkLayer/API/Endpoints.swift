//
//  Endpoints.swift
//  JCNetworkLayer
//
//  Created by Amit Singh1 on 11/09/24.
//

import Foundation

public enum Endpoints {
    static let apiKey = "70612cb596msh2412c74e1e2f567p1abf13jsn08e0d0f787a1"
    static let baseURL = "https://ott-details.p.rapidapi.com"
    /// Refer document here -  https://rapidapi.com/gox-ai-gox-ai-default/api/ott-details/playground/apiendpoint_15730a54-4b23-4381-b9e5-47ed678b2dc4
    ///
    /// you can get details for movie list using title, similar kind of movies will come as array in response
    case getMovieDetailsByTitle(title: String)
    /// send imdbid coming under resposne in movie list 
    case getMovieDetailsById(Id: String)
    /// Get list of movies 
    case getMovieList
    
    public var url: URL {
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

