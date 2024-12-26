//
//  KingfisherScreen.swift
//  SwiftUISPMsAndSDKs
//
//  Created by MacBook on 26/12/2024.
//

import SwiftUI
import Kingfisher

struct KingfisherImageLoader: View {
    
    let url: String
    var contentMode: SwiftUI.ContentMode = .fit
    
    var body: some View {
        
        KFImage(URL(string: url)!)
            .placeholder {
                Color.red.frame(width: 100, height: 100)
            }
            .onSuccess({ result in
                
            })
            .onFailure({ error in
                
            })
            .onProgress({ receivedSize, totalSize in
                
            })
            .resizable()
            .aspectRatio(contentMode: contentMode)
        
        
        //        KFImage.url(url)
        //                 .placeholder(placeholderImage)
        //                 .setProcessor(processor)
        //                 .loadDiskFileSynchronously()
        //                 .cacheMemoryOnly()
        //                 .fade(duration: 0.25)
        //                 .lowDataModeSource(.network(lowResolutionURL))
        //                 .onProgress { receivedSize, totalSize in  }
        //                 .onSuccess { result in  }
        //                 .onFailure { error in }
    }
}

#Preview {
    KingfisherImageLoader(
        url:"https://picsum.photos/id/237/200/300",
        contentMode: .fit
    )
    .frame(width: 200, height: 200)
}
