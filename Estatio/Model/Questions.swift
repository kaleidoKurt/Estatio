//
//  Question.swift
//  Estatio
//
//  Created by Kurt Wimmers on 3/20/24.
//

import Foundation

import Foundation

enum QuestionResponse {
    case next(Int) // Navigate to a specific question index in the `Questions.all` array
    case message(String) // Display a specific message to the user
    case input(String) // Indicate a need to collect input from the user
    case end // Indicate the end of the questionnaire
}

struct Question {
    let question: String
    var answers: [String]
    var response: [QuestionResponse]
}

struct Questions {
    static let all: [Question] = [
        Question(question: "Do you already own a piece of land?",
                 answers: ["Yes", "No"],
                 response: [.next(1), .next(2)]),
        
        Question(question: "Have you had the land surveyed?",
                 answers: ["Yes", "No"],
                 response: [.next(3), .message("Offer information on the importance of land surveying and how to get it done.")]),
        
        Question(question: "Are you looking for land to buy?",
                 answers: ["Yes", "No"],
                 response: [.next(4), .message("Guide to resources on deciding where to buy land or how to start the land search process.")]),
        
        Question(question: "Do you have access to utilities (water, electricity, etc.)?",
                 answers: ["Yes", "No"],
                 response: [.end, .message("Provide resources on how to get utilities to your land.")]),
                 
        // Placeholder for "What’s your preferred location for buying land?"
        // This would be an input question. Implement accordingly.
        
        // Continue defining questions based on your tree
    ]
}


