//
//  MapView.swift
//  EpicSwiftUI
//
//  Created by N7168 on 22/08/2024.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    var locationRegion : CLLocationCoordinate2D
    var body: some View {
        Map(initialPosition: .region(region))
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: locationRegion,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

#Preview {
    MapView(locationRegion: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
}
