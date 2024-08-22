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

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
