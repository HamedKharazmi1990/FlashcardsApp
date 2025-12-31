//
//  TextAndOptionalImageView.swift
//  Flashcards
//
//  Created by Hamed Kharazmi on 31.12.25.
//

import SwiftUI

struct TextAndOptionalImageView: View {
    let text: String
    let imageName: ImageResource?
    let rotate: Bool
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text(.init(text))
                    .font(.title2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(maxWidth: .infinity)
                
                if let imageName {
                    Image(imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: geometry.size.width)
                        .frame(maxHeight: geometry.size.height * 0.7)
                        .clipShape(.rect(cornerRadius: 10))
                }
            }
        }
        .padding()
    }
}

#Preview {
    TextAndOptionalImageView(
        text: "What city is this?",
        imageName: .bigBen,
        rotate: false
    )
}
