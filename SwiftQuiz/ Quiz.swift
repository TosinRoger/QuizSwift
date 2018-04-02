//
//   Quiz.swift
//  SwiftQuiz
//
//  Created by Roger Tosin on 02/04/18.
//  Copyright © 2018 Roger Tosin. All rights reserved.
//

import Foundation

class Quiz {
    let question: String
    let option: [String]
    private let correctedAnswer: String
    
    init(question: String, option: [String], correctedAnswer: String) {
        self.question = question
        self.option = option
        self.correctedAnswer = correctedAnswer
    }
    
    func valiteOption(_ index: Int) -> Bool {
        let answer = option[index]
        return answer == correctedAnswer
    }
}
