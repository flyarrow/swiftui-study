//
//  ExerciseView.swift
//  swiftUI_learning
//
//  Created by XIAO HAN CHEN on 2024/11/13.
//

import SwiftUI
import AVKit

struct ExerciseView: View {
    let exerciseNames = ["run","walk","sleep","stand"]
    let videoNames = ["1","2","3","4"]
    let index: Int
    let interval: TimeInterval = 30
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HeadView(titleText: Exercise.exercises[index].exerciseName)
                    .padding(.bottom,25)
                    .padding(.top,10)

                if let url = Bundle.main.url(
                    forResource: Exercise.exercises[index].videoName,
                    withExtension: "mp4") {
                    VideoPlayer(player: AVPlayer(url: url)).frame(height: geometry.size.height * 0.45)
                }
                else {
                    Text("Could not find \(Exercise.exercises[index].videoName).MP4").foregroundColor(.red)
                }
                Text(Date().addingTimeInterval(interval), style: .timer).font(.system(size: 90))
                Button(NSLocalizedString("Start/Done", comment: "begin exercise / mark as finished")){}
                    .font(.title3)
                    .padding()
                
                RatingView().padding(.top)
                
                Spacer()
                Button(NSLocalizedString("History", comment: "view user activity")){}.padding(.bottom)
            }
        }
    }
}

#Preview {
    ExerciseView(index: 0)
}


