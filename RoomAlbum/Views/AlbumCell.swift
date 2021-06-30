//
//  AlbumCell.swift
//  RoomAlbum
//
//  Created by Jose Tlacuilo on 29/06/21.
//

import SwiftUI

struct AlbumCell: View {
    let album: Album
    
    var body: some View {
        NavigationLink(destination: AlbumView(album: album)) {
            VStack {
                Text(album.name)
                HStack {
                    Text(album.longitude)
                    Spacer()
                    Text(album.latitude)
                }
            }
        }
    }
}
