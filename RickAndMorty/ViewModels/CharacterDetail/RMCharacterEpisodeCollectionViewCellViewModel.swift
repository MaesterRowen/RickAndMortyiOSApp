//
//  File.swift
//  RickAndMorty
//
//  Created by Jeffrey Iverson on 6/24/23.
//

import Foundation

final class RMCharacterEpisodeCollectionViewCellViewModel {
    let episodeDataUrl: URL?
    
    init(episodeDataUrl: URL?) {
        self.episodeDataUrl = episodeDataUrl
    }
}
