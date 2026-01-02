//
//  QuestionsView.swift
//  Flashcards
//
//  Created by Hamed Kharazmi on 02.01.26.
//

import SwiftUI

struct QuestionsView: View {
    @Environment(\.dismiss) var dismiss
    
    @State var questionModels: [QuestionModel]
    let topic: String
    let numberOfQuestions: Int
    
    @State private var currentQuestionIndex = 0
    
    var body: some View {
        ZStack {
            Color.gray.opacity(0.3)
                .ignoresSafeArea()
            
            VStack {
                HeaderView(
                    topic: topic,
                    questionNumber: currentQuestionIndex,
                    numberOfQuestions: numberOfQuestions,
                    colorBG: .gray,
                    colorFill: .purple,
                    dismissFunc: {
                        dismiss()
                    }
                )
                .padding()
                
                // Pile of cards
                ZStack {
                    ForEach(0..<questionModels.count, id: \.self) { index in
                        let questionModel = questionModels[index]
                        
                        CardView(
                            question: questionModel.question,
                            imageName: questionModel.questionImageName,
                            answer: questionModel.answer,
                            answerImageName: questionModel.answerImageName,
                            removeCard: {
                                withAnimation {
                                    removeCard(at: index)
                                }
                            }
                        )
                        .opacity(index == questionModels.count-1 ? 1 : 0)
                    }
                }
                .padding(.horizontal, UIDevice.isIPad ? nil : 0)
            }
        }
    }
    
    func removeCard( at Index: Int) {
        // Remove top of deck
        questionModels.removeLast()
        
        // Next Question
        currentQuestionIndex += 1
        
        // If we finish the questions, then leave
        if currentQuestionIndex >= numberOfQuestions {
            dismiss()
        }
    }
}

#Preview {
    QuestionsView(
        questionModels: QuestionViewModel.countryQuestionModels,
        topic: "Countries",
        numberOfQuestions: QuestionViewModel.countryQuestionModels.count
    )
}
