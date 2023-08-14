//
//  ContentView.swift
//  Playground
//
//  Created by Marius Preikschat on 14.08.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Gauges()
                .tabItem {
                    Label("Gauges", systemImage: "gauge")
                }
            ProgressViews()
                .tabItem {
                    Label("Progress", systemImage: "arrow.clockwise")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
