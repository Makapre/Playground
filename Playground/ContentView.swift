//
//  ContentView.swift
//  Playground
//
//  Created by Marius Preikschat on 14.08.23.
//

import SwiftUI

enum Views: String, CaseIterable {
    case gauge, progress, pickers, misc
}

struct ContentView: View {
    private var idiom : UIUserInterfaceIdiom { UIDevice.current.userInterfaceIdiom }
    
    @State private var selection: Views? = Views.gauge

    var body: some View {
        if idiom == .pad {
            NavigationSplitView {
                List(Views.allCases, id: \.self, selection: $selection) { view in
                    NavigationLink(view.rawValue.capitalized, value: view)
                }
                .navigationTitle("Playgrounds")
            } detail: {
                if let view = selection {
                    switch view {
                        case .gauge:
                            Gauges()
                        case .progress:
                            ProgressViews()
                        case .pickers:
                            Pickers()
                        case .misc:
                            Misc()
                    }
                } else {
                    Text("Pick from leftside")
                }
            }
        } else {
            tabview
        }
    }
}

private var tabview: some View {
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
        Scrolls()
            .tabItem {
                Label("Scrolls", systemImage: "arrow.up.arrow.down")
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
