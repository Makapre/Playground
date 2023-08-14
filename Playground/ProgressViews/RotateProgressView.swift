//
//  RotateProgressView.swift
//  Playground
//
//  Created by Marius Preikschat on 14.08.23.
//

import SwiftUI

struct RotateProgressView: View {
    var body: some View {
        HStack {
            Text("Rotate")
            Divider()
            ProgressView()
        }
    }
}

struct RotateProgressView_Previews: PreviewProvider {
    static var previews: some View {
        RotateProgressView()
    }
}
