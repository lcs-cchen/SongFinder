//
//  Song.swift
//  SongFinder
//
//  Created by Cyrus Chen on 26/5/2023.
//

import Foundation

struct Song: Codable {
    
    let trackId: Int
    let artistName: String
    let collectionName: String
    let trackName: String
    let artistViewUrl: String
    let collectionViewUrl: String
    let previewUrl: String
    let artworkUrl100: String
}

