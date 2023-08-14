//
//  DatePicker.swift
//  Playground
//
//  Created by Marius Preikschat on 14.08.23.
//

import SwiftUI

struct SampleDatePicker: View {
    @State private var date = Date()
    
    
    var body: some View {
        DatePicker(
            "", selection: $date,
            displayedComponents: [.date]
        )
    }
}

struct DatePicker_Previews: PreviewProvider {
    static var previews: some View {
        SampleDatePicker()
    }
}
