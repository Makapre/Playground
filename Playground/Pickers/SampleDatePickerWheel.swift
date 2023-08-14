//
//  SampleDatePickerWheel.swift
//  Playground
//
//  Created by Marius Preikschat on 14.08.23.
//

import SwiftUI

struct SampleDatePickerWheel: View {
    @State private var date = Date()
    
    
    var body: some View {
        DatePicker(
            "",
            selection: $date,
            displayedComponents: [.date]
        )
        .datePickerStyle(.wheel)
    }
}

struct SampleDatePickerWheel_Previews: PreviewProvider {
    static var previews: some View {
        SampleDatePickerWheel()
    }
}
