//
//  WelcomeView.swift
//  swiftUI_learning
//
//  Created by XIAO HAN CHEN on 2024/11/13.
//

import SwiftUI

struct HistoryView: View {
    @Binding var showHistory: Bool
    @EnvironmentObject var history: HistoryStore
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Button(action: {showHistory.toggle()}) {
              Image(systemName: "xmark.circle")
            }
                .font(.title)
                .padding(.trailing)
            VStack {
                
                Text(NSLocalizedString("History", comment: "view user activity"))
                    .font(.title)
                    .padding()
                //Exercise History
                
                Form {
                    ForEach(history.exerciseDays) { day in
                        Section(
                            header:
                                Text(day.date.formatted(.dateTime.month(.abbreviated).day(.twoDigits)))) {
                            ForEach(day.exercises, id: \.self) { exercise in Text(exercise)}
                        }
                        
                        
                    }
                }
                

                
            }
        }

    }
}

#Preview {
    HistoryView(showHistory: .constant(true)).environmentObject(HistoryStore())
}
