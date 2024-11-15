//
//  HistoryStoreDevData.swift
//  swiftUI_learning
//
//  Created by XIAO HAN CHEN on 2024/11/14.
//

import Foundation

extension HistoryStore {
    func createDevData() {
        //Development data
        exerciseDays = [
            ExerciseDay(
                date: Date().addingTimeInterval(-86400),
                exercises: [
                    Exercise.exercises[0].exerciseName,
                    Exercise.exercises[1].exerciseName,
                    Exercise.exercises[2].exerciseName
                ]),
            ExerciseDay(
                date: Date().addingTimeInterval(-86400 * 2),
                exercises: [
                    Exercise.exercises[1].exerciseName,
                    Exercise.exercises[0].exerciseName
                ])
        ]
    }

}
