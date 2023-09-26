//
//  ScrollViewBlur.swift
//  Playground
//
//  Created by Marius Preikschat on 26.09.23.
//

import SwiftUI

struct ScrollViewBlur: View {
    var body: some View {
        ScrollView {
            ForEach(ListItem.preview) { item in
                item.color
                    .frame(height: 300)
                    .overlay {
                        Text(item.title)
                    }
                    .cornerRadius(16)
                    .padding(.horizontal)
                    .scrollTransition { effect, phase in
                        effect
                            .blur(radius: phase.isIdentity ? 0 : 50)
                }
            }
        }
        .navigationTitle("Blur")
    }
}

#Preview {
    ScrollViewBlur()
}
