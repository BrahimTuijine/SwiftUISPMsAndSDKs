//
//  SDWebImageScreen.swift
//  SwiftUISPMsAndSDKs
//
//  Created by MacBook on 25/12/2024.
//

import SwiftUI
import SDWebImageSwiftUI


//https://picsum.photos/id/237/200/300
struct SDWebImageScreen: View {
    var body: some View {
        WebImage(url: URL(string: "https://picsum.photos/id/237/200/300"))
            .resizable()
            .frame(width: 300, height: 300)
    }
}

#Preview {
    SDWebImageScreen()
}
