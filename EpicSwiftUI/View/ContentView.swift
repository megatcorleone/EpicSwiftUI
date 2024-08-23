//
//  ContentView.swift
//  EpicSwiftUI
//
//  Created by N7168 on 22/08/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView().environment(ModelData())
}
