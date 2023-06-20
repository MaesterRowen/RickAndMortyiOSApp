//
//  RMCharacter.swift
//  RickAndMorty
//
//  Created by Jeffrey Iverson on 6/19/23.
//

import Foundation

struct RMCharacter : Codable {
    let id: Int
    let name: String
    let status: RMCharacterStatus
    let species: String
    let type: String
    let gender: RMCharacterGender
    let origin: RMLink
    let location: RMLink
    let image: String
    let epsidoe: [String]
    let url: String
    let created: String
}
