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
                HeadView(titleText: NSLocalizedString("Welcome", comment: "greeting"))
                Spacer()
                Button(NSLocalizedString("History", comment: "view user activity")) { }
                  .padding(.bottom)
            }
            VStack{
              HStack(alignment: .bottom) {
                VStack(alignment: .leading) {
                    Text(NSLocalizedString("Get fit", comment: "invitation to exercise"))
                    .font(.largeTitle)
                    Text(NSLocalizedString("with high intensity interval training", comment: "invitation help"))
                    .font(.headline)
                }
                Image("girl")
                  .resizable()
                  .aspectRatio(contentMode: .fill)
                  .frame(width: 240.0, height: 240.0)
                  .clipShape(Circle())
                  
              }
                Button(action: {}){
                    Text(NSLocalizedString("Get Started", comment: "invitation"))
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
