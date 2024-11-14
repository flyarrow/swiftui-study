//
//  HeadView.swift
//  swiftUI_learning
//
//  Created by XIAO HAN CHEN on 2024/11/13.
//

import SwiftUI


struct HeadView: View {
    let titleText: String
    var body: some View {
        VStack {
            Text(titleText)
                .font(.system(size: 60))
            HStack {
                Image(systemName: "hand.raised")
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
                Image(systemName: "4.circle")
            }.font(.title2)
            
        }
    }
}

#Preview {
    HeadView(titleText: "run")
}
