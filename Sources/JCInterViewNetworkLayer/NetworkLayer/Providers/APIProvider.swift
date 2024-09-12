//
//  APIProvider.swift
//  JCNetworkLayer
//
//  Created by Amit Singh1 on 11/09/24.
//

import Foundation

public class APIProvider {
    public static let shared = APIProvider()
    private init() {}
    
    public func performRequest<T: Codable>(endPoint: Endpoints, completion: @escaping (Swift.Result<T, NetworkError>) -> Void) {

        let request = RequestBuilder.buildRequest(for: endPoint)
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                completion(.failure(.requestFailed(error)))
                return
            }

            guard let httpResponse = response as? HTTPURLResponse, (200...299).contains(httpResponse.statusCode) else {
                let statusCode = (response as? HTTPURLResponse)?.statusCode ?? -1
                completion(.failure(.failedWithErrorCode(statusCode)))
                return
            }

            guard let data = data else {
                    completion(.failure(.invalidRespose))
                return
            }

            do {
                let decodedData = try JSONDecoder().decode(T.self, from: data)
                completion(.success(decodedData))
            } catch {
                completion(.failure(.decodingFailed(error)))
            }
        }
        task.resume()
    }
}


