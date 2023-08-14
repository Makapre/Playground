//
//  CapacityGradientGauge.swift
//  Playground
//
//  Created by Marius Preikschat on 14.08.23.
//

import SwiftUI

struct CapacityGradientGauge: View {
    @State private var current = 67.0
    @State private var min = 0.0
    @State private var max = 170.0
    
    let gradient = Gradient(colors: [.blue, .green, .pink])
    
    var body: some View {
        HStack {
            Text("Capacity gradient")
            Divider()
            Gauge(value: current, in: min...max) {
                Text("Heart rate")
            } currentValueLabel: {
                Text("\(Int(current))")
            } minimumValueLabel: {
                Text("\(Int(min))")
            } maximumValueLabel: {
                Text("\(Int(max))")
            }
            .gaugeStyle(AccessoryCircularCapacityGaugeStyle())
            .tint(gradient)
        }
    }
}

struct CapacityGradientGauge_Previews: PreviewProvider {
    static var previews: some View {
        CapacityGradientGauge()
    }
}
