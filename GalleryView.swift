//
//  GalleryView.swift
//  JapaneseGallery
//
//  Created by 杉山栞奈 on 5/9/25.
//

import SwiftUI

struct GalleryView: View {
    let prefecture: Prefecture
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))]) {
                ForEach(prefecture.images, id: \.self) { imageName in
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 150, height: 150)
                        .clipped()
                        .cornerRadius(10)
                }
            }
            .padding()
        }
        .navigationTitle(prefecture.name)
    }
}
