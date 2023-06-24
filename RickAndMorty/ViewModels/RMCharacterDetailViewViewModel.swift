//
//  RMCharacterDetailViewViewModel.swift
//  RickAndMorty
//
//  Created by Jeffrey Iverson on 6/21/23.
//

import Foundation

final class RMCharacterDetailViewViewModel {
    
    private let character: RMCharacter
    
    init(character: RMCharacter) {
        self.character = character
    }
    
    public var title: String {
        character.name.uppercased()
    }
}
