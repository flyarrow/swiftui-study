//
//  TimerView.swift
//  swiftUI_learning
//
//  Created by XIAO HAN CHEN on 2024/11/15.
//

import SwiftUI

struct TimerView: View {
    @State private var timeRemaining = 3
    @Binding var timerDone: Bool
    let timer = Timer.publish(every: 1, on: .main, in: .common)
        .autoconnect()
    var body: some View {
        Text("\(timeRemaining)")
            .font(.system(size: 90, design: .rounded))
            .padding()
            .onReceive(timer) { _ in
                if self.timeRemaining > 0 {
                    self.timeRemaining -= 1
                } else {
                    timerDone = true
                }
            }
    }
}



#Preview {
    TimerView(timerDone: .constant(false))
}
