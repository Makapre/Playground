//
//  SimpleGauge.swift
//  Playground
//
//  Created by Marius Preikschat on 14.08.23.
//

import SwiftUI

struct SimpleGauge: View {
    @State private var batteryLevel = 0.8

    var body: some View {
        HStack {
            Text("Simple")
            Divider()
            Gauge(value: batteryLevel) {
                Text("Battery level")
            }
        }
    }
}

struct SimpleGauge_Previews: PreviewProvider {
    static var previews: some View {
        SimpleGauge()
    }
}
