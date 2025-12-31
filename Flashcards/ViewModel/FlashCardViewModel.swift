//
//  FlashCardViewModel.swift
//  Flashcards
//
//  Created by Hamed Kharazmi on 31.12.25.
//

import Foundation

@Observable
class FlashCardViewModel {
    var flashCardModels: [FlashcardModel] = [
        .init(
            topic: "Countries",
            topicDescription: "Explore geographical knowledge",
            topicImageName: .bigBen,
            questionModels: QuestionViewModel.countryQuestionModels
        ),
        .init(
            topic: "Movies",
            topicDescription: "Test your movie knowledge",
            topicImageName: .moviesTopic,
            questionModels: QuestionViewModel.movieTriviaModels
        ),
        .init(
            topic: "Spanish Greetings",
            topicDescription: "Greet in Spanish",
            topicImageName: .madrid,
            questionModels: QuestionViewModel.spanishGreetingsModels
        ),
        .init(
            topic: "Shakespeare",
            topicDescription: "Shakespeare trivia",
            topicImageName: .shakespeare,
            questionModels: QuestionViewModel.shakespeareTriviaQuestions
        ),

    ]
}
