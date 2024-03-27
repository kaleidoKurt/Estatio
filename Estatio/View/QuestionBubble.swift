//
//  QuestionBubble.swift
//  Estatio
//
//  Created by Kurt Wimmers on 3/20/24.
//

import SwiftUI

struct QuestionBubble: View {
    var question: String
    
    var body: some View {
        Text(question)
            .padding()
            .background(Color("creamColor"))
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .foregroundColor(.black)
            .transition(.scale)
    }
}

