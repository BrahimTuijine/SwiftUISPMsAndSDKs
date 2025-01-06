//
//  SwiftfullUIScreen.swift
//  SwiftUISPMsAndSDKs
//
//  Created by MacBook on 27/12/2024.
//

import SwiftUI
import SwiftfulUI

struct SwiftfullUIScreen: View {
    var body: some View {
        
        Text("Hello, World!")
            .foregroundStyle(.blue)
            .padding()
            .withBackgroundAndBorder(
                backgroundColor: Color.white,
                borderColor: Color.blue,
                borderWidth: 1,
                cornerRadius: 10
            ).asButton {
                print("hello brahim")
            }
        
    }
}

#Preview {
    SwiftfullUIScreen()
}
