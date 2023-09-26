//
//  ListItem.swift
//  Playground
//
//  Created by Marius Preikschat on 26.09.23.
//

import SwiftUI

struct ListItem: Identifiable {
    let id = UUID()
    let title: String
    let color: Color
    
    static let preview: [ListItem] = [
        ListItem(title: "Row 1", color: .red),
        ListItem(title: "Row 2", color: .purple),
        ListItem(title: "Row 3", color: .green),
        ListItem(title: "Row 4", color: .yellow),
        ListItem(title: "Row 5", color: .blue),
        ListItem(title: "Row 6", color: .red),
        ListItem(title: "Row 7", color: .purple),
        ListItem(title: "Row 8", color: .green),
        ListItem(title: "Row 9", color: .yellow),
        ListItem(title: "Row 10", color: .blue)
    ]
}
