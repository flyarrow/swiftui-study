//
//  ContentView.swift
//  swiftUI_learning
//
//  Created by XIAO HAN CHEN on 2024/11/13.
//

import SwiftUI


struct ContentView: View {
    //@State private var selectedTab = 9
    @SceneStorage("selectedTab") private var selectedTab = 9
    var body: some View {
        TabView(selection: $selectedTab) {
            WelcomeView(selectedTab: $selectedTab)
                .tag(9)
            ForEach(0 ..< Exercise.exercises.count) { index in
                ExerciseView(selectedTab: $selectedTab, index: index)
                    .tag(index)
            }
            //SuccessView(selectedTab: $selectedTab)
            
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        .environmentObject(HistoryStore())
        .onAppear{
            print (FileManager.default.urls(
                for: .documentDirectory,
                in: .userDomainMask))
        }
    }
}


#Preview {
    ContentView()
}
