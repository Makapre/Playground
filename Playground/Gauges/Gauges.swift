//
//  Gauges.swift
//  Playground
//
//  Created by Marius Preikschat on 14.08.23.
//

import SwiftUI

struct Gauges: View {    
    var body: some View {
        NavigationView {
            List {
                SimpleGauge()
                LabledGauge()
                CircularGauge()
                CapacityGauge()
                CircularGradientGauge()
                CapacityGradientGauge()
                SliderGauge()
            }
            .navigationTitle("Gauges")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct Gauges_Previews: PreviewProvider {
    static var previews: some View {
        Gauges()
    }
}
