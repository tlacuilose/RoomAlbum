//
//  AlbumView.swift
//  RoomAlbum
//
//  Created by Jose Tlacuilo on 29/06/21.
//

import SwiftUI

struct AlbumView: View {
    let album: Album
    
    var body: some View {
        List {
            ForEach(album.photos) { photo in
                Text(photo.url)
            }
        }
    }
}
