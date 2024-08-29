//
//  SplashScreen.swift
//  EpicSwiftUI
//
//  Created by N7168 on 23/08/2024.
//

import Lottie
import SwiftUI

struct SplashScreen: UIViewRepresentable {
    
    var animationFileName: String
    let loopMode: LottieLoopMode
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    func makeUIView(context: Context) -> Lottie.LottieAnimationView {
        let animationView = LottieAnimationView(name: animationFileName)
        animationView.loopMode = loopMode
        animationView.play()
        animationView.contentMode = .scaleAspectFill
        return animationView
    }
}
