//
//  SampleDatePickerGraphical.swift
//  Playground
//
//  Created by Marius Preikschat on 14.08.23.
//

import SwiftUI

struct SampleDatePickerGraphical: View {
    @State private var date = Date()
    
    
    var body: some View {
        DatePicker(
            "",
            selection: $date,
            displayedComponents: [.date]
        )
        .datePickerStyle(.graphical)
    }
}

struct SampleDatePickerGraphical_Previews: PreviewProvider {
    static var previews: some View {
        SampleDatePickerGraphical()
    }
}
