//
//  ImagePrefetcher.swift
//  SwiftUISPMsAndSDKs
//
//  Created by MacBook on 26/12/2024.
//

import Foundation
import SDWebImageSwiftUI

final class ImagePefetcherUsingSDWebImage {
    static let instance = ImagePefetcherUsingSDWebImage()
    private let prefetcher = SDWebImagePrefetcher()
    
    private init() {}
    
    func startPrefetching(urls: [URL]) -> Void {
        prefetcher.prefetchURLs(urls)
    }
    
    func stopPrefetching() -> Void {
        prefetcher.cancelPrefetching()
    }
}

import Kingfisher

final class ImagePefetcherUsingKingfisher {
    static let instance = ImagePefetcherUsingKingfisher()
    var prefetcher: Kingfisher.ImagePrefetcher?
    private init() {}
    
    func startPrefetching(urls: [URL]) -> Void {
        prefetcher = Kingfisher.ImagePrefetcher(urls: urls)
        prefetcher?.start()
    }
    
    func stopPrefetching() -> Void {
        prefetcher?.stop()
    }
}

