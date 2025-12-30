//
//  ContentView.swift
//  Flashcards
//
//  Created by Hamed Kharazmi on 30.12.25.
//

import SwiftUI

struct TopicView: View {
    var body: some View {
        NavigationStack {
            VStack {
                
                Image(.imgPeaceful1)
                    .resizable()
                    .frame(width: 200, height: 200)
                    .clipShape(.rect(cornerRadius: 15))
                    .shadow(radius: 3)
                
                Text("TODO...")
            }
            .navigationTitle("Flashcards")
        }
    }
}

#Preview {
    TopicView()
}
