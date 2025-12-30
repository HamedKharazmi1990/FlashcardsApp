//
//  FlashcardModel.swift
//  Flashcards
//
//  Created by Hamed Kharazmi on 30.12.25.
//

import Foundation

struct FlashcardModel: Identifiable {
    let id = UUID()
    
    let topic: String
    let topicDescription: String
    let topicImageName: String
    let questionModels: [QuestionModel]
    let numberOfQuestions: Int
}
