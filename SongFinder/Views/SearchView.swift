//
//  SearchView.swift
//  SongFinder
//
//  Created by Cyrus Chen on 26/5/2023.
//

import SwiftUI

struct SearchView: View {

    @State var foundsongs: [Song] = []
    
    @State var searchText = ""
    
    var body: some View {
        NavigationView{
            List(foundsongs, id: \.trackId){ currentSong in
                
                VStack(alignment: .leading){
                    HStack{
                        Text(currentSong.trackName)
                            .bold()
                        Spacer()
                    }
                    Text(currentSong.collectionName)
                        .italic()
                    Text(currentSong.artistName)
                }
            }
        }
        .searchable(text: $searchText)
        .onChange(of: searchText){ newSearchText in
            Task{
                foundsongs = await NetworkService.fetch(resultsFor: searchText)
            }
            
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
