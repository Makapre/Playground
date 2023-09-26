//
//  ScrollViewScaleEffect.swift
//  Playground
//
//  Created by Marius Preikschat on 26.09.23.
//

import SwiftUI

struct ScrollViewScaleEffect: View {
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
                            .scaleEffect(phase.isIdentity ? 1 : 0.5)
                            .offset(x: offset(for: phase))
                    }
            }
        }
        .navigationTitle("ScaleEffect")
    }
    
    func offset(for phase: ScrollTransitionPhase) -> Double {
        switch phase {
            case .topLeading:
                -200
            case .identity:
                0
            case .bottomTrailing:
                200
        }
    }
}

#Preview {
    ScrollViewScaleEffect()
}
