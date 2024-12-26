//
//  SDWebImageScreen.swift
//  SwiftUISPMsAndSDKs
//
//  Created by MacBook on 25/12/2024.
//

import SwiftUI
import SDWebImageSwiftUI


struct SDWebImageLoader: View {
    
    let imageUrl: String
    var contentMode: ContentMode = .fit
    
    var body: some View {
        WebImage(url: URL(string: imageUrl))
            
            .onSuccess { image, data, cacheType in
                //
            }
            .onFailure { error in
                //
            }
            .resizable()
            .indicator(.activity) // Activity Indicator
            .transition(.fade(duration: 0.5)) // Fade Transition with duration
            .aspectRatio(contentMode: contentMode)
            
    }
}

//https://picsum.photos/id/237/200/300
struct SDWebImageScreen: View {
    var body: some View {
        ImageLoader(url: "https://picsum.photos/id/237/200/300")
            .frame(width: 300, height: 300, alignment: .center)
    }
}

#Preview {
    SDWebImageScreen()
}
