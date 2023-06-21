//
//  File.swift
//  RickAndMorty
//
//  Created by Jeffrey Iverson on 6/20/23.
//

import Foundation

struct RMGetAllCharactersResponse: Codable {
    let info: RMInfoResponse
    let results: [RMCharacter]
}
