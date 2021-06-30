//
//  Album.swift
//  RoomAlbum
//
//  Created by Jose Tlacuilo on 29/06/21.
//

import Foundation

struct Album: Identifiable {
    var id = UUID()
    var name: String
    var longitude: String
    var latitude: String
    var photos = [
        Photo(url: "one"),
        Photo(url: "two"),
        Photo(url: "three"),
        Photo(url: "four")
    ]
}
