//
//  FlashItemRow.swift
//  Flashcards
//
//  Created by Hamed Kharazmi on 31.12.25.
//

import SwiftUI

struct FlashItemRow: View {
    let flashcardModel: FlashcardModel
    
    var imageSize: CGFloat {
        UIDevice.isIPad ? 85.0 : 60.0
    }
    
    var topicFont: Font {
        UIDevice.isIPad ? .largeTitle : .body
    }
    
    var topicWeight: Font.Weight {
        UIDevice.isIPad ? .bold : .semibold
    }
    
    var topicDescriptionFont: Font {
        UIDevice.isIPad ? .title : .caption
    }
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                Text(flashcardModel.topic)
                    .font(topicFont)
                    .fontWeight(topicWeight)
                Text(flashcardModel.topicDescription)
                    .font(topicDescriptionFont)
                    .fontWeight(.light)
            }
            
            Spacer()
            
            Image(flashcardModel.topicImageName)
                .resizable()
                .scaledToFill()
                .frame(width: imageSize, height: imageSize)
                .clipShape(.rect(cornerRadius: 10))
        }
    }
}

#Preview {
    FlashItemRow(flashcardModel: .init(
        topic: "Countries",
        topicDescription: "Explore geographical knowledge",
        topicImageName: .bigBen,
        questionModels: QuestionViewModel.countryQuestionModels
    ))
    .padding()
}
