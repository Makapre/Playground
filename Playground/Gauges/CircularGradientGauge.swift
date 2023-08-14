//
//  CircularGradient.swift
//  Playground
//
//  Created by Marius Preikschat on 14.08.23.
//

import SwiftUI

struct CircularGradientGauge: View {
    @State private var current = 23.0
    @State private var min = -50.0
    @State private var max = 50.0
    
    let gradient = Gradient(colors: [.blue, .red])
    
    var body: some View {
        HStack {
            Text("Circular gradient")
            Divider()
            Gauge(value: current, in: min...max) {
                Text("Temperature")
            } currentValueLabel: {
                Text("\(Int(current))")
            } minimumValueLabel: {
                Text("\(Int(min))")
            } maximumValueLabel: {
                Text("\(Int(max))")
            }
            .gaugeStyle(AccessoryCircularGaugeStyle())
            .tint(gradient)
        }
    }
}

struct CircularGradientGauge_Previews: PreviewProvider {
    static var previews: some View {
        CircularGradientGauge()
    }
}
