//
//  WelcomeView.swift
//  swiftUI_learning
//
//  Created by XIAO HAN CHEN on 2024/11/13.
//

import SwiftUI

struct SuccessView: View {
    let message = """
        Good job completing all four exercises!
        Remember tomorrow's another day.
        So et well and get some rest.
        """
    var body: some View {

        VStack {
            Spacer()
            VStack {
                Image(systemName: "hand.raised.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .foregroundColor(.purple)
                    .frame(width: 75, height: 75)
                    .padding()

                Text("High Five!")
                    .fontWeight(.bold)
                    .font(.system(size: 30))
                Text(message).multilineTextAlignment(.center)
                    .foregroundColor(.gray)

            }
            Spacer()
            Button("Continue"){}
                .padding()
                .font(.largeTitle)
            
            
        }
        
    }
}

#Preview {
    SuccessView()
}
