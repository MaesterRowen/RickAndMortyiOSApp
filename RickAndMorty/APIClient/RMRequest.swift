//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Jeffrey Iverson on 6/19/23.
//

import Foundation


/// Object that represents a single API call
final class RMRequest {
    
    
    /// API Constants
    private struct Constants {
        static let baseUrl : String = "https://rickandmortyapi.com/api"
    }
    
    /// Desired endpoint
    private let endpoint : RMEndpoint
    
    /// Path components for API, if any
    private let pathComponents: Set<String>
    
    /// Query Arguments for API, if any
    private let queryParameters: [URLQueryItem]
    
    /// Constructed url for the api request in string format
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            string += "/"
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    
    
    /// Completed and constructed API url
    public var url: URL? {
        return URL(string: urlString)
    }
    
    /// Desired HTTP Method
    public let httpMethod = "GET"
    
    // MARK: - Public
    
    
    /// Construct request
    /// - Parameters:
    ///   - endpoint: Target endpoint
    ///   - pathComponents: Collection of Path Components
    ///   - queryParameters: Collection of Query Parameters
    public init(
        endpoint: RMEndpoint,
        pathComponents: Set<String> = [],
        queryParameters: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}
