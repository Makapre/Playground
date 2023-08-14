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
            Pickers()
                .tabItem {
                    Label("Pickers", systemImage: "filemenu.and.cursorarrow")
                }
            Misc()
                .tabItem {
                    Label("Misc", systemImage: "ellipsis.circle")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
