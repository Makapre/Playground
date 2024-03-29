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
    @State private var changeColor = true
    @State private var animateGradient = false
    
    let step = 1
    let range = 0...50
    
    var body: some View {
        NavigationView {
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
                Section("Swipy swipe swipe") {
                    HStack {
                        Spacer()
                        Label("swipe me horizontally", systemImage: changeColor ? "arrow.right" : "arrow.left")
                            .foregroundStyle(changeColor ? .green : .red)
                            .swipe(
                                left: {
                                    if !changeColor {
                                        print("swipe left")
                                        changeColor = true
                                    }
                                }, right: {
                                    if changeColor {
                                        print("swipe right")
                                        changeColor = false
                                    }
                                }
                            )
                            .contextMenu {
                                Button {
                                    print("click")
                                } label: {
                                    Label("Delete", systemImage: "trash")
                                }
                            }
                        Spacer()
                    }
                }
                Section("Masks") {
                    LinearGradient(colors: [.blue, .green, .red], startPoint: .topLeading, endPoint:.bottomTrailing)
                        .frame(height: 50)
                        .mask {
                            Text("Welcome to SwiftUI")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                        }
                    
                    LinearGradient(colors: [.blue, .red, .red, .blue], startPoint: animateGradient ? .leading : .trailing, endPoint: animateGradient ? .trailing : .leading)
                        .frame(height: 50)
                        .mask {
                            Text("Welcome to SwiftUI")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                        }
                        .onAppear {
                            withAnimation(.linear(duration: 2.0).repeatForever(autoreverses: true)) {
                                animateGradient.toggle()
                            }
                        }
                    }
            }
            .navigationTitle("Misc")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct Misc_Previews: PreviewProvider {
    static var previews: some View {
        Misc()
    }
}
