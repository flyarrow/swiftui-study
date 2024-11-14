//
//  HeadView.swift
//  swiftUI_learning
//
//  Created by XIAO HAN CHEN on 2024/11/13.
//

import SwiftUI


struct HeadView: View {
    @Binding var selectedTab: Int //1
    let titleText: String
    var body: some View {
        VStack {
            Text(titleText)
                .font(.system(size: 60))
            HStack {
                ForEach(0 ..< Exercise.exercises.count) { index in
                    let fill = index == selectedTab ? ".fill" : ""
                    Image(systemName: "\(index + 1).circle\(fill)").onTapGesture {
                        selectedTab = index
                    }
                }
            }.font(.title2)
            
        }
    }
}

#Preview {
    HeadView(selectedTab: .constant(0), titleText: "Run")
      .previewLayout(.sizeThatFits)
    HeadView(selectedTab: .constant(1), titleText: "Walk")
      .preferredColorScheme(.dark)
      .environment(\.sizeCategory, .accessibilityLarge)
      .previewLayout(.sizeThatFits)

}
