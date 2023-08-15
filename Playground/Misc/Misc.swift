//
//  Misc.swift
//  Playground
//
//  Created by Marius Preikschat on 14.08.23.
//

import SwiftUI

struct Misc: View {
    @State private var vibrateOnRing = false
    @State private var stepperCurrent = 0
    
    let step = 1
    let range = 0...50
    
    var body: some View {
        List {
            Section("Buttons and toggles") {
                HStack {
                    Toggle("Vibrate on Ring", isOn: $vibrateOnRing)
                    Toggle("Vibrate on Ring", isOn: $vibrateOnRing)
                        .toggleStyle(.button)
                }
                Stepper(value: $stepperCurrent,
                        in: range,
                        step: step) {
                    Text("\(stepperCurrent)")
                }
            }
            Section("Sharing is caring") {
                ShareLink("Share URL", item: URL(string: "https://developer.apple.com/xcode/swiftui/")!)
                ShareLink(item: URL(string: "https://developer.apple.com/xcode/swiftui/")!) {
                    Label("Share URL", systemImage: "link")
                }
            }
            Section("Disclosure View") {
                DisclosureGroup("Group 1") {
                    Text("a")
                    Text("b")
                }
                DisclosureGroup("Group 2") {
                    Text("c")
                    Text("d")
                }
            }
        }
    }
}

struct Misc_Previews: PreviewProvider {
    static var previews: some View {
        Misc()
    }
}
