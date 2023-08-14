//
//  Gauges.swift
//  Playground
//
//  Created by Marius Preikschat on 14.08.23.
//

import SwiftUI

struct Gauges: View {    
    var body: some View {
        List {
            SimpleGauge()
            LabledGauge()
            CircularGauge()
            CapacityGauge()
            CircularGradientGauge()
            CapacityGradientGauge()
            SliderGauge()
         }
    }
}

struct Gauges_Previews: PreviewProvider {
    static var previews: some View {
        Gauges()
    }
}
