//
//  File.swift
//  RickAndMorty
//
//  Created by Jeffrey Iverson on 6/24/23.
//

import Foundation

final class RMCharacterInfoCollectionViewCellViewModel {

    public let value: String
    public let title: String
    
    init( value: String, title: String ) {
        self.value = value
        self.title = title
    }
}
