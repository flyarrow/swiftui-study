//
//  WelcomeView.swift
//  swiftUI_learning
//
//  Created by XIAO HAN CHEN on 2024/11/13.
//

import SwiftUI

struct HistoryView: View {
    let today = Date()
    let yesterday = Date().addingTimeInterval(-86400)
    
    let exercise1 = ["run","walk","sleep","stand"]
    let exercise2 = ["run","walk","sleep"]
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Button(action: {}) {
              Image(systemName: "xmark.circle")
            }
                .font(.title)
                .padding(.trailing)
            VStack {
                
                Text("History")
                    .font(.title)
                    .padding()
                //Exercise History
                Form {
                    Section(
                        header:
                            Text(today.formatted(Date.FormatStyle()
                                .month(.twoDigits)
                                .day(.twoDigits)))
                            .font(.headline)){
                                //Section content
                                ForEach(exercise1, id: \.self) { exercise in Text(exercise)}
                            }
                    Section(
                        header:
                            Text(yesterday.formatted(Date.FormatStyle()
                                .month(.twoDigits)
                                .day(.twoDigits)))
                            .font(.headline)){
                                //Section content
                                ForEach(exercise2, id: \.self) { exercise in Text(exercise)}
                            }
                }
                
            }
        }

    }
}

#Preview {
    HistoryView()
}
