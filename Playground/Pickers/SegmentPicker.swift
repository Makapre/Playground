//
//  SegmentPicker.swift
//  Playground
//
//  Created by Marius Preikschat on 14.08.23.
//

import SwiftUI

struct SegmentPicker: View {
    @Binding var fav: Int
    
    var body: some View {
        Picker("States", selection: $fav) {
            Text("NRW").tag(0)
            Text("HH").tag(2)
            Text("SH").tag(1)
        }
        .pickerStyle(.segmented)
    }
}
