//
//  WelcomeView.swift
//  swiftUI_learning
//
//  Created by XIAO HAN CHEN on 2024/11/13.
//

import SwiftUI

struct SuccessView: View {
    let message = NSLocalizedString("Good job completing all four exercises!\nRemember tomorrow's another day.\nSo et well and get some rest.", comment: "success to exerciser")
    @Environment(\.presentationMode) var presentationMode
    @Binding var selectedTab: Int
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

                Text(NSLocalizedString("High Five!", comment: "happy ending"))
                    .fontWeight(.bold)
                    .font(.system(size: 30))
                Text(message).multilineTextAlignment(.center)
                    .foregroundColor(.gray)

            }
            Spacer()
            Button(NSLocalizedString("Continue", comment: "continue button")){
                presentationMode.wrappedValue.dismiss()
                selectedTab = 9
            }
                .padding()
                .font(.largeTitle)
            
            
        }
        
    }
}

#Preview {
    SuccessView(selectedTab: .constant(3))
}
