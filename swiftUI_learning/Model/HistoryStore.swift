//
//  HistoryStore.swift
//  swiftUI_learning
//
//  Created by XIAO HAN CHEN on 2024/11/14.
//

import Foundation

struct ExerciseDay: Identifiable {
    let id = UUID()
    let date: Date
    var exercises: [String]
    
    init(date: Date, exercises: [String] = []) {
        self.date = date
        self.exercises = exercises
    }
    
}

class HistoryStore: ObservableObject {
    @Published var exerciseDays: [ExerciseDay] = []
    init() {
      #if DEBUG
      createDevData()
      #endif
    }
    
    func addDoneExercise(_ exerciseName: String) {
        let today = Date()
        if today.isSameDay(as: exerciseDays[0].date) {
            print ("Adding \(exerciseName)")
            exerciseDays[0].exercises.append(exerciseName)
        } else {
            exerciseDays.insert(
                ExerciseDay(date: today, exercises: [exerciseName]), at: 0
            )
        }
    }
}





