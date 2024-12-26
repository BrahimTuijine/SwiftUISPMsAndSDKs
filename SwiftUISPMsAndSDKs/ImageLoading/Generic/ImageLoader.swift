//
//  ImageLoader.swift
//  SwiftUISPMsAndSDKs
//
//  Created by MacBook on 26/12/2024.
//

import SwiftUI


struct ImageLoader: View {
    let url: String
    var contentMode: ContentMode = .fit
    var body: some View {
        KingfisherImageLoader(url: url,contentMode: contentMode)
    }
}

#Preview {
    ImageLoader(url: "https://picsum.photos/id/237/200/300")
}
