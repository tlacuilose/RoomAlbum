//
//  Room.swift
//  RoomAlbum
//
//  Created by Jose Tlacuilo on 29/06/21.
//

import Combine

class Room: ObservableObject {
    @Published var albums: [Album]
        
    init() {
        self.albums = [
            Album(name: "One", longitude: "1", latitude: "1"),
            Album(name: "Two", longitude: "2", latitude: "2"),
            Album(name: "Three", longitude: "3", latitude: "3"),
            Album(name: "Four", longitude: "4", latitude: "4"),
            Album(name: "Five", longitude: "5", latitude: "5")
        ]
    }
}
