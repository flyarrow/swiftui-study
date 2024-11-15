//
//  DateExtension.swift
//  swiftUI_learning
//
//  Created by XIAO HAN CHEN on 2024/11/15.
//

import Foundation

extension Date {
    func isSameDay(as otherDate: Date) -> Bool {
        let calendar = Calendar.current
        return calendar.isDate(self, inSameDayAs: otherDate)
    }
}

