//
//  SimplePicker.swift
//  Playground
//
//  Created by Marius Preikschat on 14.08.23.
//

import SwiftUI

struct SimplePicker: View {
    @State private var fav = 1
    
    var body: some View {
        Picker("States", selection: $fav) {
            Text("NRW").tag(0)
            Text("HH").tag(2)
            Text("SH").tag(1)
        }
    }
}

struct SimplePicker_Previews: PreviewProvider {
    static var previews: some View {
        SimplePicker()
    }
}
