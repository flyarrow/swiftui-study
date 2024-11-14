//
//  ContentView.swift
//  swiftUI_learning
//
//  Created by XIAO HAN CHEN on 2024/11/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            WelcomeView()
            ForEach(0..<Exercise.exercises.count) { index in
                ExerciseView(index: index)
            }
            SuccessView()
            
        }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}

#Preview {
    ContentView()
}
