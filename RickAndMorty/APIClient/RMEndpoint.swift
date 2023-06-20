//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Jeffrey Iverson on 6/19/23.
//

import Foundation


/// Represents unique API Endpoing
@frozen enum RMEndpoint: String {
    /// Endpoint to get character info
    case character
    
    /// Endpoint to get location info
    case location
    
    /// Endpoint to get episode info
    case episode
}
