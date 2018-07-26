//
//  ViewController.swift
//  GuessWhat
//
//  Created by Ondřej on 24/07/2018.
//  Copyright © 2018 Ondřej Tichý. All rights reserved.
//

import UIKit
import ProgressHUD

class ViewController: UIViewController {

    @IBAction func answerPressed(_ sender: Any) {
        if (sender as AnyObject).tag == 1 {
            pickedAnswer = true
        }
        else if (sender as AnyObject).tag == 2 {
            pickedAnswer = false
        }
        checkAnswer()
        questionNumber = questionNumber + 1
        updateUI()
    }
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressBar: UIView!
    
    var pickedAnswer : Bool = false
    var allQuestions = QuestionList()
    var questionNumber : Int = 0;
    var alertTitle : String = "";
    var score : Int = 0;
    
    
    func delayWithSeconds(_ seconds: Double, completion: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            completion()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.lineBreakMode = .byWordWrapping
        questionLabel.numberOfLines = 5
        updateUI()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    
    func updateUI() {
        progressBar.frame.size.width = (view.frame.size.width / 20) * CGFloat(questionNumber)
        progressLabel.text = String(questionNumber) + "/20"
        scoreLabel.text = "Score: " + String(score)
        nextQuestion()
    }
    
    func nextQuestion() {
        
        if questionNumber <= 19 {
            questionLabel.text = allQuestions.list[questionNumber].questionText
        }
        else {
            delayWithSeconds(0.6, completion: showAlert)
        }
    }
    
    func checkAnswer() {
        let correctAnswer = allQuestions.list[questionNumber].answer
        if correctAnswer == pickedAnswer {
            ProgressHUD.showSuccess("Correct!")
            score = score + 1
        }
        else {
            ProgressHUD.showError("Wrong!")
        }
    }
    
    func startOver() {
        questionNumber = 0
        score = 0
        updateUI()
    }

    func showAlert() {
        
        switch score {
        case 0:
            alertTitle = "0? Really?"
        case 1..<5:
            alertTitle = "You can do better!"
        case 5..<10:
            alertTitle = "Very good!"
        case 10..<15:
            alertTitle = "Awesome!"
        default:
            alertTitle = "You the best!"
        }
        
        let alert = UIAlertController(title: alertTitle, message: "Your score is " + String(score) + ". Do you want to start over?", preferredStyle: .alert)
        
        let restartAction = UIAlertAction(title: "Yes", style: .default, handler: { UIAlertAction in
            self.startOver()
        })
        alert.addAction(restartAction)
        present(alert, animated: true, completion: nil)
    }
    
}

