//
//  ContentView.swift
//  JapaneseGallery
//
//  Created by 杉山栞奈 on 5/9/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(prefectures) { prefecture in
                NavigationLink(destination: GalleryView(prefecture: prefecture)) {
                    Text(prefecture.name)
                }
            }
            .navigationTitle("Japanese Prefectures")
        }
    }
}
