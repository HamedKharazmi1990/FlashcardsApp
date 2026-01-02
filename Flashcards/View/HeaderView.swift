//
//  HeaderView.swift
//  Flashcards
//
//  Created by Hamed Kharazmi on 31.12.25.
//

import SwiftUI

struct HeaderView: View {
    let topic: String
    let questionNumber: Int
    let numberOfQuestions: Int
    let colorBG: Color
    let colorFill: Color
    let dismissFunc: () -> Void
    
    let barWidth = 10.0
    let unicodeX = "\u{2715}"
    
    var percentage: CGFloat {
        CGFloat(questionNumber) / CGFloat(numberOfQuestions)
    }
    
    var numQuestionsText: String {
        "\(questionNumber) out of \(numberOfQuestions)"
    }
    
    var topicFont: Font {
        UIDevice.isIPad ? .largeTitle : .body
    }
    
    var numQuestionsFont: Font {
        UIDevice.isIPad ? .largeTitle : .caption
    }
    
    var body: some View {
        VStack(spacing: 5) {
            // First row
            HStack {
                Text(topic)
                    .font(topicFont)
                
                Spacer()
                
                Text(numQuestionsText)
                    .font(numQuestionsFont)
            }
            .fontWeight(.bold)
            
            // Second row
            HStack {
                Button(action: {
                    dismissFunc()
                },label: {
                    Text( unicodeX)
                        .font(.largeTitle)
                        .fontWeight(.thin)
                        .foregroundStyle(colorBG)
                })
                
                FillBarView(
                    barWidth: barWidth,
                    colorBG: .gray,
                    colorFill: .purple,
                    percentage: percentage
                )
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    HeaderView(
        topic: "Countries",
        questionNumber: 3,
        numberOfQuestions: 10,
        colorBG: .gray,
        colorFill: .purple,
        dismissFunc: {}
    )
}
