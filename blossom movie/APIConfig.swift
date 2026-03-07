//
//  APIConfig.swift
//  blossom movie
//
//  Created by mac on 3/3/26.
//

import Foundation

struct APIConfig: Decodable {
    let tmdbBaseURL: String
    let tmdbAPIKey: String
    let youtubeBaseURL: String
    let youtubeAPIKey: String
    let youtubeSearchURL: String
    
    static let shared: APIConfig? = {
        do {
            return try loadConfig()
        } catch {
            print( "Failed to load API config: \(error.localizedDescription)")
            return nil
        }
       
    }()
    
    private static func loadConfig() throws -> APIConfig {
        guard let url = Bundle.main.url(forResource: "APIConfig", withExtension: "json") else {
            fatalError("APIConfig.json is missing or invalid")
        }
        
        do {
            let data = try Data(contentsOf: url)
            return try JSONDecoder().decode(APIConfig.self, from: data)
        } catch let error as DecodingError {
            throw APIConfigError.decodingFailed(underlyingError: error)
        } catch {
            throw APIConfigError.dataLoadingFailed(underlyingError: error)
        }
    }
}
