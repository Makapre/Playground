//
//  RelativeProgressView.swift
//  Playground
//
//  Created by Marius Preikschat on 14.08.23.
//

import SwiftUI

struct RelativeProgressView: View {
    let workoutDateRange = Date()...Date().addingTimeInterval(5*60)
    
    
    var body: some View {
        HStack {
            Text("Relative")
            Divider()
            ProgressView(timerInterval: workoutDateRange) {
                Text("Workout")
            }
        }
    }
}

struct RelativeProgressView_Previews: PreviewProvider {
    static var previews: some View {
        RelativeProgressView()
    }
}
