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
    let exercises: [String]
    
    init(date: Date, exercises: [String] = []) {
        self.date = date
        self.exercises = exercises
    }
    
}

struct HistoryStore {
    var exerciseDays: [ExerciseDay] = []
    init() {
      #if DEBUG
      createDevData()
      #endif
    }
}





