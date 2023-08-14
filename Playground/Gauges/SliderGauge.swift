//
//  SliderGauge.swift
//  Playground
//
//  Created by Marius Preikschat on 14.08.23.
//

import SwiftUI

struct SliderGauge: View {
    @State private var current = 67.0
    @State private var min = 0.0
    @State private var max = 170.0
    
    var gradient = Gradient(colors: [.red, .green, .red])
    
    var body: some View {
        HStack {
            Text("Slider")
            Divider()
            VStack {
                Gauge(value: current, in: min...max) {
                    Text("Heart rate")
                } currentValueLabel: {
                    Text("\(Int(current))")
                } minimumValueLabel: {
                    Text("\(Int(min))")
                } maximumValueLabel: {
                    Text("\(Int(max))")
                }
                .tint(gradient)
                Slider(value: $current, in: min...max)
            }
        }
    }
}

struct SliderGauge_Previews: PreviewProvider {
    static var previews: some View {
        SliderGauge()
    }
}
