//
//  SearchResult.swift
//  SongFinder
//
//  Created by Cyrus Chen on 26/5/2023.
//

import Foundation

struct SearchResult: Codable{
    
    let Count: Int
    let results: [Song]
    
}
