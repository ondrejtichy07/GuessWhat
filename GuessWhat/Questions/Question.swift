//
//  Question.swift
//  GuessWhat
//
//  Created by Ondřej on 24/07/2018.
//  Copyright © 2018 Ondřej Tichý. All rights reserved.
//

import Foundation

class Question {
    let answer : Bool
    let questionText : String
    
    
    init(text : String, correctAnswer: Bool) {
        answer = correctAnswer
        questionText = text
    }
}
