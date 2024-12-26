//
//  SDWebImageScreen.swift
//  SwiftUISPMsAndSDKs
//
//  Created by MacBook on 25/12/2024.
//

import SwiftUI
import SDWebImageSwiftUI

struct ImageLoader: View {
    let imageUrl: String
    var body: some View {
        SDWebImageLoader(imageUrl: imageUrl)
    }
}

fileprivate struct SDWebImageLoader: View {
    let imageUrl: String
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
            .scaledToFit()
            .frame(width: 300, height: 300, alignment: .center)
    }
}

final class ImagePefetcher {
    static let instance = ImagePefetcher()
    private let prefetcher = SDWebImagePrefetcher()
    
    private init() {}
    
    func startPrefetching(urls: [URL]) -> Void {
        prefetcher.prefetchURLs(urls)
    }
    
    func stopPrefetching() -> Void {
        prefetcher.cancelPrefetching()
    }
}

//https://picsum.photos/id/237/200/300
struct SDWebImageScreen: View {
    var body: some View {
        ImageLoader(imageUrl: "https://picsum.photos/id/237/200/300")
    }
}

#Preview {
    SDWebImageScreen()
}
