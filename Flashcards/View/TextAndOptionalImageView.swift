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
    
    var titleFont: Font {
        UIDevice.isIPad ? .largeTitle : .title2
    }
    var imageWidthScale: CGFloat {
        UIDevice.isIPad ? 0.75 : 1.0
    }
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text(.init(text))
                    .font(titleFont)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(maxWidth: .infinity)
                
                if let imageName {
                    Image(imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: geometry.size.width * imageWidthScale)
                        .frame(maxHeight: geometry.size.height * 0.7)
                        .clipShape(.rect(cornerRadius: 10))
                }
            }
        }
        .padding()
        .rotation3DEffect(
            rotate ? .degrees(180) : .zero,
            axis: (x: 0.0, y: 1.0, z: 0.0)
        )
    }
}

#Preview {
    TextAndOptionalImageView(
        text: "What city is this?",
        imageName: .bigBen,
        rotate: false
    )
}
