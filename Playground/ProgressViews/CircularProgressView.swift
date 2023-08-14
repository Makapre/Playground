//
//  CircularProgressView.swift
//  Playground
//
//  Created by Marius Preikschat on 14.08.23.
//
// On platforms other than macOS, the circular style may appear as an indeterminate indicator instead.

import SwiftUI

struct CircularProgressView: View {
    @State private var current = 0.8
    
    var body: some View {
        HStack {
            Text("Circular")
            Divider()
            ProgressView(value: current)
                .progressViewStyle(.circular)
        }
    }
}

struct CircularProgressView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProgressView()
    }
}
