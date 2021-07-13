//
//  FructusApp.swift
//  Fructus
//
//  Created by Андрей Баитов on 28.05.21.
//

import SwiftUI

@main
struct FructusApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnboardingView()
            }else{
                ContentView()
            }

            
        }
    }
}
