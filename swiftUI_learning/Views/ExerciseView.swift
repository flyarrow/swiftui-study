//
//  ExerciseView.swift
//  swiftUI_learning
//
//  Created by XIAO HAN CHEN on 2024/11/13.
//

import SwiftUI

struct ExerciseView: View {
    let exerciseNames = ["run","walk","sleep","stand"]
    let videoNames = ["1","2","3","4"]
    let index: Int
    var body: some View {
        HeadView(exerciseName: exerciseNames[index])
        Text("Video player")
        Text("Timer")
        Text("Start/Done button")
        Text("Rating")
        Text("History button")
    }
}

#Preview {
    ExerciseView(index: 0)
}


