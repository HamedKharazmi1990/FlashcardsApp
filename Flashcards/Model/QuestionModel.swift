//
//  QuestionModel.swift
//  Flashcards
//
//  Created by Hamed Kharazmi on 30.12.25.
//

import Foundation

struct QuestionModel: Identifiable {
    let id = UUID()
    let question: String
    let questionImageName: String?
    let answer: String
    let answerImageName: String?
}
