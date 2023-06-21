//
//  RMInfoResponse.swift
//  RickAndMorty
//
//  Created by Jeffrey Iverson on 6/20/23.
//

import Foundation

struct RMInfoResponse : Codable {
    let count: Int
    let pages: Int
    let next: String?
    let prev: String?
}
