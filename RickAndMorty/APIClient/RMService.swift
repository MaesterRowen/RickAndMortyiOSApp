//
//  RMService.swift
//  RickAndMorty
//
//  Created by Jeffrey Iverson on 6/19/23.
//

import Foundation


/// Primary API service object to get Rick & Morty data
final class RMService {
    
    /// Shared singleton instance
    static let shared = RMService()
    
    /// Privatized constructor
    private init() {}
    
    
    /// Send Rick & Morty API Call
    /// - Parameters:
    ///   - request: Request intance
    ///   - completion: Callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void ) {
        
    }
}
