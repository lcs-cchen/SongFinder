//
//  SearchView.swift
//  SongFinder
//
//  Created by Cyrus Chen on 26/5/2023.
//

import SwiftUI

struct SearchView: View {

    @State var foundsongs: [Song] = []
    
    
    var body: some View {
        List(foundsongs, id: \.trackId){ currentSong in
            
            VStack{
                Text(currentSong.trackName)
                    .bold()
                
                Text(currentSong.artistName)
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
