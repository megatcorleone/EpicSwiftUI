//
//  EpicSwiftUIApp.swift
//  EpicSwiftUI
//
//  Created by N7168 on 22/08/2024.
//

import SwiftUI

@main
struct EpicSwiftUIApp: App {
    @State private var modelData = ModelData()
    @State var isActive: Bool = false

    var body: some Scene {
        WindowGroup {
            
            ZStack {
                if self.isActive {
                    ContentView()
                        .environment(modelData)
                } else {
                    VStack {
                        SplashScreen(animationFileName: "splashscreenAnimation", loopMode: .loop)
                            .frame(width: 200, height: 200)
                            .ignoresSafeArea()

                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
            .ignoresSafeArea()
            
        }
    }
}
