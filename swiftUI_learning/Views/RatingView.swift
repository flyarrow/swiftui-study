//
//  HeadView.swift
//  swiftUI_learning
//
//  Created by XIAO HAN CHEN on 2024/11/13.
//

import SwiftUI


struct RatingView: View {
    //@Binding var rating: Int
    let maximumRating = 5
    let onColor = Color.red
    let offColor = Color.gray
    let exerciseIndex: Int
    @AppStorage("ratings") private var ratings = "3000"
    @State private var rating = 0
    fileprivate func convertRating() {
        let index = ratings.index(
            ratings.startIndex,
            offsetBy: exerciseIndex
        )
        let character = ratings[index]
        rating = character.wholeNumberValue ?? 0
    }
    
    var body: some View {
        HStack {
            ForEach(1 ..< maximumRating + 1) { index in
                Image(systemName: "waveform.path.ecg")
                    .foregroundColor(
                        index > rating ? offColor : onColor
                    )
                    .onTapGesture {
                        updateRating(index: index)
                    }
                    .onChange(of: ratings) { _ in
                        convertRating()
                    }
            }
            
        }
        .font(.largeTitle)
        .onAppear{
            convertRating()
        }
    }
    func updateRating(index: Int) {
        rating = index
        let index = ratings.index(
            ratings.startIndex,
            offsetBy: exerciseIndex)
        ratings.replaceSubrange(index...index, with: String(rating))
    }
    init(exerciseIndex: Int) {
      self.exerciseIndex = exerciseIndex
      // 2
      let desiredLength = Exercise.exercises.count
      if ratings.count < desiredLength {
        // 3
        ratings = ratings.padding(
          toLength: desiredLength,
          withPad: "0",
          startingAt: 0)
      }
    }
}

struct RatingView_Previews: PreviewProvider {
  @AppStorage("ratings") static var ratings: String?
  static var previews: some View {
    ratings = nil
    return RatingView(exerciseIndex: 0)
      .previewLayout(.sizeThatFits)
  }
}

//#Preview {
//    //RatingView(rating: .constant(4))
//    @AppStorage("ratings") static var ratings: String?
//      static var previews: some View {
//        ratings = nil
//        return RatingView(exerciseIndex: 0)
//          .previewLayout(.sizeThatFits)
//      }
//}
