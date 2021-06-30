//
//  AlbumList.swift
//  RoomAlbum
//
//  Created by Jose Tlacuilo on 29/06/21.
//

import SwiftUI

struct AlbumList: View {
    let albums: [Album]
    
    var body: some View {
        List {
            ForEach(albums) { album in
                AlbumCell(album: album)
            }
        }
    }
}
