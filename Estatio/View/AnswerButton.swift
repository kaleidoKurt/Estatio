//
//  AnswerButton.swift
//  Estatio
//
//  Created by Kurt Wimmers on 3/20/24.
//

import SwiftUI

struct AnswerButton: View {
    var answer: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(answer)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color("creamColor"))
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
        .foregroundColor(.black)
        .padding(.horizontal)
    }
}

