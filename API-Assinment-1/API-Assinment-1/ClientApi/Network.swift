//
//  Network.swift
//  API-Assinment-1
//
//  Created by Veerababu Mulugu on 8/24/23.
//

import Foundation

class Network {
    
    static let shared = Network()
    
    private init() {}

    func fetchData<T: Codable>(from endpoint: String)async throws -> T  {
       
        guard let url = URL(string: endpoint) else {
            throw networkError.InvalidURL
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw networkError.InvalidRes
        }
        do {
            let decoderData = try JSONDecoder().decode(T.self, from: data)

            return decoderData
        } catch {
            throw networkError.InvalidData
        }
    }
}

enum networkError: Error {
    case InvalidURL
    case InvalidRes
    case InvalidData
}

