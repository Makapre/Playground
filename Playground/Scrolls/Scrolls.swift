//
//  Scrolls.swift
//  Playground
//
//  Created by Marius Preikschat on 26.09.23.
//

import SwiftUI

struct Scrolls: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("ScaleEffect", destination: ScrollViewScaleEffect())
                NavigationLink("Blur", destination: ScrollViewBlur())
                NavigationLink("RotationEffect", destination: ScrollViewRotationEffect())
            }
            .navigationTitle("ScrollViews")
        }
    }
}

#Preview {
    Scrolls()
}
