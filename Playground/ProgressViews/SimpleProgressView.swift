//
//  SimpleProgressView.swift
//  Playground
//
//  Created by Marius Preikschat on 14.08.23.
//

import SwiftUI

struct SimpleProgressView: View {
    @State private var current = 0.8
    
    var body: some View {
        HStack {
            Text("Simple")
            Divider()
            ProgressView(value: current) {
                Text("Loading")
            }
            .tint(.purple)
        }
    }
}

struct SimpleProgressView_Previews: PreviewProvider {
    static var previews: some View {
        SimpleProgressView()
    }
}
