//
//  QuestionModel.swift
//  Flashcards
//
//  Created by Hamed Kharazmi on 30.12.25.
//

import Foundation
import SwiftUI

struct QuestionModel: Identifiable {
    let id = UUID()
    let question: String
    let questionImageName: ImageResource?
    let answer: String
    let answerImageName: ImageResource?
}
