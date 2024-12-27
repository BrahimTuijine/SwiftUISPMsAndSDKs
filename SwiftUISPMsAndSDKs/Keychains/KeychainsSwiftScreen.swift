//
//  KeychainsSwiftScreen.swift
//  SwiftUISPMsAndSDKs
//
//  Created by MacBook on 27/12/2024.
//

import SwiftUI
import KeychainSwift

// keychain is similar to UserDefaults or AppStorage
// keychain is encrypted
// keychain is good fo sensitive : passwords, credit cart info ...
// keychain persist between installs and across devices

struct KeychainsSwiftScreen: View {
    
    let keychain = KeychainSwift()
    @State private var userPassword: String = ""
    let passKey = "password"
    
    var body: some View {
        VStack {
            Text(userPassword.isEmpty ? "no password" : userPassword)
            
            Button("get password info") {
                userPassword = keychain.get(passKey) ?? ""
            }
        }
        .onAppear {
            keychain.set("brahimPassword!", forKey: passKey) // withAccess: .accessibleWhenUnlockedThisDeviceOnly
        }
    }
}

#Preview {
    KeychainsSwiftScreen()
}
