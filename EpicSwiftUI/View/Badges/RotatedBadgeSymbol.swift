//
//  RotatedBadgeSymbol.swift
//  EpicSwiftUI
//
//  Created by N7168 on 23/08/2024.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    let angle: Angle

    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

#Preview {
    RotatedBadgeSymbol(angle: Angle(degrees: 0))
}
