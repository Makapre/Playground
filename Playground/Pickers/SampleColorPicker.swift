//
//  ColorPicker.swift
//  Playground
//
//  Created by Marius Preikschat on 14.08.23.
//

import SwiftUI

struct SampleColorPicker: View {
    @State private var bgColor = Color(.sRGB, red: 0.98, green: 0.9, blue: 0.2)
    
    var body: some View {
        ColorPicker("Alignment Guides", selection: $bgColor)
    }
}

struct ColorPicker_Previews: PreviewProvider {
    static var previews: some View {
        SampleColorPicker()
    }
}
