//
//  FlashItemRow.swift
//  Flashcards
//
//  Created by Hamed Kharazmi on 31.12.25.
//

import SwiftUI

struct FlashItemRow: View {
    let flashcardModel: FlashcardModel
    
    let imageSize = 60.0
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                Text(flashcardModel.topic)
                    .font(.body)
                    .fontWeight( .semibold)
                Text(flashcardModel.topicDescription)
                    .font(.caption)
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
