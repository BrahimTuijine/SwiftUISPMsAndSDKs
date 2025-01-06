//
//  SwiftfulRoutingScreen.swift
//  SwiftUISPMsAndSDKs
//
//  Created by MacBook on 06/01/2025.
//

import SwiftUI
import SwiftfulRouting


struct SwiftfulRoutingScreen: View {
    var body: some View {
        RouterView { _ in
            MyHomeView()
        }
    }
}

struct MyHomeView: View {
    @Environment(\.router) var router
    
    var body: some View {
        
        Button( "Click me", action: {
            router.showScreen(.fullScreenCover) { _ in
                MyView()
            }
        })
            .navigationTitle("brahim")
    }
}

struct MyView: View {
    @Environment(\.router) var router
    var body: some View {
        Button(action: {
            router.dismissScreen()
        }, label: {
            Text("back")
        })
        .navigationTitle("screen three")
    }
}


#Preview {
    SwiftfulRoutingScreen()
}
