//
//  AlbumView.swift
//  RoomAlbum
//
//  Created by Jose Tlacuilo on 29/06/21.
//

import SwiftUI

struct AlbumView: View {
    let album: Album
    
    @State(initialValue: false) var presentNewPhoto: Bool
    
    var body: some View {
        List {
            ForEach(album.photos) { photo in
                Text(photo.url)
            }
        }
        .navigationTitle(album.name)
        .toolbar {
            ToolbarItem(placement: .confirmationAction) {
                Button("Add") {
                    self.presentNewPhoto = true
                }
            }
        }
        .sheet(isPresented: $presentNewPhoto) {
            NavigationView {
                Image(systemName: "photo")
                    .navigationTitle("New Photo")
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .cancellationAction) {
                            Button("Cancel") {
                                self.presentNewPhoto = false
                            }
                        }
                        ToolbarItem(placement: .confirmationAction) {
                            Button("Done") {
                                self.presentNewPhoto = false
                            }
                        }
                    }
            }
        }
        
    }
}
