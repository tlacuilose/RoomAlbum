//
//  ContentView.swift
//  RoomAlbum
//
//  Created by Jose Tlacuilo on 28/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: PhotosView()) {
                    Text("Photos")
                }
            }
            .navigationTitle("Albums")
        }
    }
}


struct PhotosView: View {
    var body: some View {
        List {
            Image(systemName: "photo")
        }
        .navigationTitle("Photos")
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
