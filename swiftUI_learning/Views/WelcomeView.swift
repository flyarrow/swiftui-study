//
//  WelcomeView.swift
//  swiftUI_learning
//
//  Created by XIAO HAN CHEN on 2024/11/13.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            VStack {
                HeadView(titleText: "Welcome")
                Spacer()
                Button("History") { }
                  .padding(.bottom)
            }
            VStack{
              HStack(alignment: .bottom) {
                VStack(alignment: .leading) {
                  Text("Get fit")
                    .font(.largeTitle)
                  Text("with high intensity interval training")
                    .font(.headline)
                }
                Image("girl")
                  .resizable()
                  .aspectRatio(contentMode: .fill)
                  .frame(width: 240.0, height: 240.0)
                  .clipShape(Circle())
                  
              }
                Button(action: {}){
                    Text("Get Started")
                    Image(systemName: "arrow.right.circle")
                }
                .font(.title2)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.gray, lineWidth: 2)
                )
            }

        }
    }
}

#Preview {
    WelcomeView()
}
