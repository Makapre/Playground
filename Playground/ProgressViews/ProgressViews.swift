//
//  ProgressViews.swift
//  Playground
//
//  Created by Marius Preikschat on 14.08.23.
//

import SwiftUI

struct ProgressViews: View {    
    var body: some View {
        NavigationView {
            List {
                SimpleProgressView()
                RelativeProgressView()
                RotateProgressView()
                #if os(macOS)
                    CircularProgressView()
                #endif
            }
            .navigationTitle("Progress Views")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ProgressViews_Previews: PreviewProvider {
    static var previews: some View {
        ProgressViews()
    }
}
