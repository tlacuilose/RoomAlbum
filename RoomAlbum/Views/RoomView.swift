//
//  RoomView.swift
//  RoomAlbum
//
//  Created by Jose Tlacuilo on 29/06/21.
//

import SwiftUI

struct RoomView: View {
    let room = Room()
    
    var body: some View {
        NavigationView {
            AlbumList(albums: room.albums)
                .navigationTitle("Albums")
        }
    }
}

