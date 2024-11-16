//
//  ExerciseView.swift
//  swiftUI_learning
//
//  Created by XIAO HAN CHEN on 2024/11/13.
//

import SwiftUI
import AVKit

struct ExerciseView: View {
    @Binding var selectedTab: Int
    let exerciseNames = ["run","walk","sleep","stand"]
    let videoNames = ["1","2","3","4"]
    let index: Int
    let interval: TimeInterval = 30
    var disableDone = true
    //@AppStorage("rating") private var rating = 0
    @State private var showHistory = false
    @State private var showSuccess = false
    @State private var timerDone = false
    @State private var showTimer = false
    @EnvironmentObject var history: HistoryStore

    var lastExercise: Bool {
        index + 1 == Exercise.exercises.count
    }
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HeadView(selectedTab: $selectedTab, titleText: Exercise.exercises[index].exerciseName)
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
                
                
                
                
                HStack(spacing: 100) {
                    Button("Start Exercise") {
                        showTimer.toggle()
                        }
                    Button("Done") {
                        history.addDoneExercise(Exercise.exercises[index].exerciseName)

                        timerDone = false
                        showTimer.toggle()
                        if lastExercise{
                            showSuccess.toggle()
                        } else {
                            selectedTab += 1
                        }
                    }
                    .disabled(!timerDone)
                    .sheet(isPresented: $showSuccess){
                        SuccessView(selectedTab: $selectedTab)
                    }
                    
                }
                
                if showTimer {
                    TimerView(timerDone: $timerDone)
                }
                
                
                
                Spacer()
                RatingView(exerciseIndex: index).padding()
                Button(NSLocalizedString("History", comment: "view user activity")) { showHistory.toggle() }
                  .padding(.bottom)
                  .sheet(isPresented: $showHistory){
                      HistoryView(showHistory: $showHistory)
                  }
            }
        }
    }
}

#Preview {
    //ExerciseView(index: 0)
    ExerciseView(selectedTab: .constant(0), index: 0)
        .environmentObject(HistoryStore())

}


