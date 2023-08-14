//
//  Pickers.swift
//  Playground
//
//  Created by Marius Preikschat on 14.08.23.
//

import SwiftUI

struct Pickers: View {
    var body: some View {
        List {
            Section("Pickers") {
                SimplePicker()
                SegmentPicker()
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
