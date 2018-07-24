//
//  QuestionContainer.swift
//  GuessWhat
//
//  Created by Ondřej on 24/07/2018.
//  Copyright © 2018 Ondřej Tichý. All rights reserved.
//

import Foundation

class QuestionList {
    var list = [Question]()
    
    init() {
        
        let item = Question(text: "Valentine\'s day is banned in Saudi Arabia.", correctAnswer: true)
        
        list.append(item)
        
        list.append(Question(text: "A slug\'s blood is green.", correctAnswer: true))
        
        list.append(Question(text: "Approximately one quarter of human bones are in the feet.", correctAnswer: true))
        
        list.append(Question(text: "The total surface area of two human lungs is approximately 70 square metres.", correctAnswer: true))
        
        list.append(Question(text: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", correctAnswer: true))
        
        list.append(Question(text: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", correctAnswer: false))
        
        list.append(Question(text: "It is illegal to pee in the Ocean in Portugal.", correctAnswer: true))
        
        list.append(Question(text: "You can lead a cow down stairs but not up stairs.", correctAnswer: false))
        
        list.append(Question(text: "Google was originally called \"Backrub\".", correctAnswer: true))
        
        list.append(Question(text: "Buzz Aldrin\'s mother\'s maiden name was \"Moon\".", correctAnswer: true))
        
        list.append(Question(text: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", correctAnswer: false))
        
        list.append(Question(text: "No piece of square dry paper can be folded in half more than 7 times.", correctAnswer: false))
        
        list.append(Question(text: "Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.", correctAnswer: true))
        
        list.append(Question(text: "Goldfish has a memory of three seconds.", correctAnswer: false))
        
        list.append(Question(text: "Snakes can predict a earthquake.", correctAnswer: true))
        
        list.append(Question(text: "King Henry VII. slept with big axe behind him.", correctAnswer: true))
        
        list.append(Question(text: "'Q' is the only letter that doesn't appear in any U.S. state name.", correctAnswer: true))
        
        list.append(Question(text: "Cats has the same number of toes on every paw.", correctAnswer: false))
        
        list.append(Question(text: "Human nose never stops growing.", correctAnswer: true))
        
        list.append(Question(text: "Penny dropped from skyscraper can kill.", correctAnswer: false))
    }
}
