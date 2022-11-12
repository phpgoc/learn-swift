//
//  MapView.swift
//  FistSingleView
//
//  Created by 杨殿擎 on 2022/11/12.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView{
        return MKMapView(frame: .zero)
    }
    func updateUIView(_ uiView: MKMapView, context : Context){
        let location = CLLocationCoordinate2D(latitude: 40.00491139888854, longitude: 116.2896190152893)
        let span = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
        let region = MKCoordinateRegion(center: location, span:span)
        uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
