//
//  RoomView.swift
//  RoomAlbum
//
//  Created by Jose Tlacuilo on 29/06/21.
//

import SwiftUI

struct RoomView: View {
    let room = Room()
    
    @State(initialValue: false) var presentNewAlbum: Bool
    @State(initialValue: "") var newAlbumName: String
    
    var body: some View {
        NavigationView {
            AlbumList(albums: room.albums)
            .navigationTitle("Albums")
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Add") {
                        self.presentNewAlbum = true
                    }
                }
            }
        }
        .sheet(isPresented: $presentNewAlbum) {
            NavigationView {
                Form {
                    TextField("Name", text: $newAlbumName)
                }
                .navigationTitle("New Album")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .cancellationAction) {
                        Button("Cancel") {
                            self.presentNewAlbum = false
                        }
                    }
                    ToolbarItem(placement: .confirmationAction) {
                        Button("Done") {
                            self.presentNewAlbum = false
                        }
                    }
                }
            }
        }
       
    }
}

