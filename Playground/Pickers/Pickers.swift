//
//  Pickers.swift
//  Playground
//
//  Created by Marius Preikschat on 14.08.23.
//

import SwiftUI

struct Pickers: View {
    @State private var fav: Int = 1
    
    var body: some View {
        List {
            Section("Pickers") {
                SimplePicker(fav: $fav)
                SegmentPicker(fav: $fav)
            }
            Section("Color") {
                SampleColorPicker()
            }
            Section("Dates") {
                SampleDatePicker()
                SampleDatePickerGraphical()
                SampleDatePickerWheel()
            }
        }
    }
}

struct Pickers_Previews: PreviewProvider {
    static var previews: some View {
        Pickers()
    }
}
