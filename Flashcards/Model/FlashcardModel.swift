//
//  FlashcardModel.swift
//  Flashcards
//
//  Created by Hamed Kharazmi on 30.12.25.
//

import Foundation
import SwiftUI

struct FlashcardModel: Identifiable {
    let id = UUID()
    
    let topic: String
    let topicDescription: String
    let topicImageName: ImageResource
    let questionModels: [QuestionModel]
    
    var numberOfQuestions: Int {
        questionModels.count
    }
}
