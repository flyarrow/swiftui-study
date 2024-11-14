//
//  Exercise.swift
//  swiftUI_learning
//
//  Created by XIAO HAN CHEN on 2024/11/14.
//

import Foundation

struct Exercise {
    let exerciseName: String
    let videoName: String
    
    enum ExerciseEnum: CustomStringConvertible {
        case run
        case walk
        case sleep
        case stand
        
        var description: String {
            switch self {
            case .run:
                return NSLocalizedString("Run", comment: "exercise run")
            case .walk:
                return NSLocalizedString("Walk", comment: "exercise walk")
            case .sleep:
                return NSLocalizedString("Sleep", comment: "exercise sleep")
            case .stand:
                return NSLocalizedString("Stand", comment: "exercise stand")
            }
        }
    }
}

extension Exercise {
    static let exercises = [
        Exercise(
            exerciseName: String(describing: ExerciseEnum.run),
            videoName: "1"),
        Exercise(
            exerciseName: String(describing: ExerciseEnum.walk),
            videoName: "2"),
        Exercise(
            exerciseName: String(describing: ExerciseEnum.sleep),
            videoName: "3"),
        Exercise(
            exerciseName: String(describing: ExerciseEnum.stand),
            videoName: "4"),
    ]
}
