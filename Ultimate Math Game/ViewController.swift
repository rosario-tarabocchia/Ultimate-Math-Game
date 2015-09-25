//
//  ViewController.swift
//  Ultimate Math Game
//
//  Created by Rosario Tarabocchia on 9/24/15.
//  Copyright © 2015 RLDT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func shouldAutorotate() -> Bool {
        return false
    }

    @IBOutlet weak var lblQuestion: UILabel!
    @IBOutlet weak var lblCorrect: UILabel!
    @IBOutlet weak var lblIncorrect: UILabel!
    @IBOutlet weak var lblCorrectIncorrect: UILabel!
    
    @IBOutlet weak var btnAnswer0: UIButton!
    @IBOutlet weak var btnAnswer1: UIButton!
    @IBOutlet weak var btnAnswer2: UIButton!
    @IBOutlet weak var btnAnswer3: UIButton!
    
    var firstNumber : Int = 0
    var secondNumber : Int = 0
    var answer : Int = 0
    var correctAnswer : Int = 0
    var incorrectAnswer1 : Int = 0
    var incorrectAnswer2 : Int = 0
    var incorrectAnswer3 : Int = 0
    
    var totalCorrect : Int = 0
    var totalIncorrect : Int = 0
    
    var correctIncorrect : String = ""
    
    var theMathGame : Int = 0
    
    var rightAnswerResponses : Int = 0
    var wrongAnswerResponses : Int = 0
    
    var algebraAddQuestion : Int = 0
    var algebraMultiplyQuestion : Int = 0
    
    var remainder : Int = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        randomizeTheMathGame()  
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func btnAnswer0ACTION(sender: UIButton) {
        
        if correctAnswer == 0 {
            
            printRightAnswer()
        }
        
        else {
            
            printWrongAnswer()
        }
    }
    
    
    @IBAction func btnAnswer1ACTION(sender: UIButton) {
        
        if correctAnswer == 1 {
            
            printRightAnswer()
        }
            
        else {
            
            printWrongAnswer()
        }
    }
    
    
    @IBAction func btnAnswer2ACTION(sender: AnyObject) {
        
        if correctAnswer == 2 {
            
            printRightAnswer()
        }
            
        else {
            
            printWrongAnswer()
        }
    }
    

    @IBAction func btnAnswer3ACTION(sender: UIButton) {
        
        if correctAnswer == 3 {
            
            printRightAnswer()
        }
            
        else {
            
            printWrongAnswer()
        }
    }
    
    
    @IBAction func btnResetACTION(sender: UIButton) {
        
        reset()
    }
    
    
    func reset(){
        
        lblIncorrect.text = "0"
        lblCorrect.text = "0"
        lblCorrectIncorrect.text = ""
        randomizeTheMathGame()
        
        
    }
    
    
    func randomizeTheMathGame(){
        
        theMathGame = Int(arc4random_uniform(10))
        
        if theMathGame == 0 {
            
            simpleAdd()
            
        }
        
        if theMathGame == 1 {
            
            algebraAdd()
            
        }
        
        if theMathGame == 2 {
            
            simpleSubtract()
            
        }
        
        if theMathGame == 3 {
            
            algebraSubtract1()
            
        }
        
        if theMathGame == 4 {
            
            algebraSubtract2()
            
        }
        
        if theMathGame == 5 {
            
            simpleMulitply()
            
        }
        
        if theMathGame == 6 {
            
            algebraMultiply()
            
        }
        
        if theMathGame == 7 {
            
            simpleDivide()
            
        }
        
        if theMathGame == 8 {
            
            algebraDivide1()
            
        }
        
        if theMathGame == 9 {
            
            algebraDivide2()
            
        }
        

        
    }
    
    
    /* func buttonRandomizer(){
        
        correctAnswer = Int(arc4random_uniform(4))
        incorrectAnswer1 = Int(arc4random_uniform(101))
        incorrectAnswer2 = Int(arc4random_uniform(101))
        incorrectAnswer3 = Int(arc4random_uniform(101))
    
    } */
    
    func randomNumberCheck(){
        
        if correctAnswer == incorrectAnswer1 || correctAnswer == incorrectAnswer2 || correctAnswer == incorrectAnswer3 || incorrectAnswer1 == incorrectAnswer2 || incorrectAnswer1 == incorrectAnswer3 || incorrectAnswer2 == incorrectAnswer3 {
            
            incorrectAnswer1 = Int(arc4random_uniform(101))
            incorrectAnswer2 = Int(arc4random_uniform(101))
            incorrectAnswer3 = Int(arc4random_uniform(101))
        
        }
        
    }
    
    func printCorrectIncorrect(){
        
        lblIncorrect.text = "\(totalIncorrect)"
        lblCorrect.text = "\(totalCorrect)"
        lblCorrectIncorrect.text = correctIncorrect
        randomizeTheMathGame()

    }
    
    func printWrongAnswer(){
        
        wrongAnswerResponses = Int(arc4random_uniform(5))
        totalIncorrect = totalIncorrect + 1
        
        if wrongAnswerResponses == 0 {
            
            correctIncorrect = "WRONG!"
        }
        
        if wrongAnswerResponses == 1 {
            
            correctIncorrect = "Man are you stupid!"
        }
        
        if wrongAnswerResponses == 2 {
            
            correctIncorrect = "Durrrrrrr"
        }
        
        if wrongAnswerResponses == 3 {
            
            correctIncorrect = "Want something easier?     What's 1 + 1?"
        }
        
        if wrongAnswerResponses == 4 {
            
            correctIncorrect = "Not even close!"
        }
        
        printCorrectIncorrect()
        
    }
    
    func printRightAnswer(){
        
        rightAnswerResponses = Int(arc4random_uniform(5))
        totalCorrect = totalCorrect + 1
        
        if rightAnswerResponses == 0 {
            
            correctIncorrect = "CORRECTAMUNDO!"
        }
        
        if rightAnswerResponses == 1 {
            
            correctIncorrect = "Wow are you smart!"
        }
        
        if rightAnswerResponses == 2 {
            
            correctIncorrect = "Ding! Ding! Ding!"
        }
        
        if rightAnswerResponses == 3 {
            
            correctIncorrect = "Einstein has nothing on you!"
        }
        
        if rightAnswerResponses == 4 {
            
            correctIncorrect = "Are you cheating?"
        }
    
        printCorrectIncorrect()
    
    }
    
    
    func simpleAdd(){
        
        firstNumber = Int(arc4random_uniform(251))
        secondNumber = Int(arc4random_uniform(251))
        
        answer = firstNumber + secondNumber
        
        correctAnswer = Int(arc4random_uniform(4))
        incorrectAnswer1 = Int(arc4random_uniform(501))
        incorrectAnswer2 = Int(arc4random_uniform(501))
        incorrectAnswer3 = Int(arc4random_uniform(501))
        
        randomNumberCheck()
        
        printSimpleAddButtons()
        
        printSimpleAddQuestion()
        
        
    }
    
    
    func printSimpleAddQuestion (){
        
        lblQuestion.text = "\(firstNumber) + \(secondNumber) = ?"
        
        
    }
    
    
    func printSimpleAddButtons(){
        
        if correctAnswer == 0 {
            btnAnswer0.setTitle("\(answer)", forState: UIControlState.Normal)
            btnAnswer1.setTitle("\(incorrectAnswer1)", forState: UIControlState.Normal)
            btnAnswer2.setTitle("\(incorrectAnswer2)", forState: UIControlState.Normal)
            btnAnswer3.setTitle("\(incorrectAnswer3)", forState: UIControlState.Normal)
            
        }
        
        if correctAnswer == 1 {
            btnAnswer0.setTitle("\(incorrectAnswer1)", forState: UIControlState.Normal)
            btnAnswer1.setTitle("\(answer)", forState: UIControlState.Normal)
            btnAnswer2.setTitle("\(incorrectAnswer2)", forState: UIControlState.Normal)
            btnAnswer3.setTitle("\(incorrectAnswer3)", forState: UIControlState.Normal)
            
        }
        
        if correctAnswer == 2 {
            btnAnswer0.setTitle("\(incorrectAnswer2)", forState: UIControlState.Normal)
            btnAnswer1.setTitle("\(incorrectAnswer1)", forState: UIControlState.Normal)
            btnAnswer2.setTitle("\(answer)", forState: UIControlState.Normal)
            btnAnswer3.setTitle("\(incorrectAnswer3)", forState: UIControlState.Normal)
            
        }
        
        if correctAnswer == 3 {
            btnAnswer0.setTitle("\(incorrectAnswer3)", forState: UIControlState.Normal)
            btnAnswer1.setTitle("\(incorrectAnswer1)", forState: UIControlState.Normal)
            btnAnswer2.setTitle("\(incorrectAnswer2)", forState: UIControlState.Normal)
            btnAnswer3.setTitle("\(answer)", forState: UIControlState.Normal)
            
        }
        
        
    }
    
    func algebraAdd(){
        
        firstNumber = Int(arc4random_uniform(251))
        secondNumber = Int(arc4random_uniform(251))
        
        algebraAddQuestion = Int(arc4random_uniform(2))
        
        answer = firstNumber + secondNumber
        
        correctAnswer = Int(arc4random_uniform(4))
        incorrectAnswer1 = Int(arc4random_uniform(501))
        incorrectAnswer2 = Int(arc4random_uniform(501))
        incorrectAnswer3 = Int(arc4random_uniform(501))
        
        randomNumberCheck()
        
        if algebraAddQuestion == 0 {
            
            printAlgebraAddQuestion1()
        }
        
        if algebraAddQuestion == 1 {
            
            printAlgebraAddQuestion2()
        }
        
        printAlgebraAddButtons()
        
        
    }
    
    func printAlgebraAddQuestion1(){
        
        lblQuestion.text = "\(firstNumber) + ? = \(answer)"
    }
    
    func printAlgebraAddQuestion2(){
        
        lblQuestion.text = "? + \(firstNumber) = \(answer)"
    }
    
    
    func printAlgebraAddButtons(){
        
        if correctAnswer == 0 {
            btnAnswer0.setTitle("\(secondNumber)", forState: UIControlState.Normal)
            btnAnswer1.setTitle("\(incorrectAnswer1)", forState: UIControlState.Normal)
            btnAnswer2.setTitle("\(incorrectAnswer2)", forState: UIControlState.Normal)
            btnAnswer3.setTitle("\(incorrectAnswer3)", forState: UIControlState.Normal)
            
        }
        
        if correctAnswer == 1 {
            btnAnswer0.setTitle("\(incorrectAnswer1)", forState: UIControlState.Normal)
            btnAnswer1.setTitle("\(secondNumber)", forState: UIControlState.Normal)
            btnAnswer2.setTitle("\(incorrectAnswer2)", forState: UIControlState.Normal)
            btnAnswer3.setTitle("\(incorrectAnswer3)", forState: UIControlState.Normal)
            
        }
        
        if correctAnswer == 2 {
            btnAnswer0.setTitle("\(incorrectAnswer2)", forState: UIControlState.Normal)
            btnAnswer1.setTitle("\(incorrectAnswer1)", forState: UIControlState.Normal)
            btnAnswer2.setTitle("\(secondNumber)", forState: UIControlState.Normal)
            btnAnswer3.setTitle("\(incorrectAnswer3)", forState: UIControlState.Normal)
            
        }
        
        if correctAnswer == 3 {
            btnAnswer0.setTitle("\(incorrectAnswer3)", forState: UIControlState.Normal)
            btnAnswer1.setTitle("\(incorrectAnswer1)", forState: UIControlState.Normal)
            btnAnswer2.setTitle("\(incorrectAnswer2)", forState: UIControlState.Normal)
            btnAnswer3.setTitle("\(secondNumber)", forState: UIControlState.Normal)
            
        }
        
        
    }
    
    
    func simpleSubtract(){
        
        firstNumber = Int(arc4random_uniform(251))
        secondNumber = Int(arc4random_uniform(251))
        
        if firstNumber < secondNumber {
            
            simpleSubtract()
            
            
        }
        
        answer = firstNumber - secondNumber
        
        correctAnswer = Int(arc4random_uniform(4))
        incorrectAnswer1 = Int(arc4random_uniform(251))
        incorrectAnswer2 = Int(arc4random_uniform(251))
        incorrectAnswer3 = Int(arc4random_uniform(251))
        
        randomNumberCheck()
        
        printSimpleSubtractQuestion()
        
        printSimpleSubtractButtons()
        
        
    }
    
    func printSimpleSubtractQuestion (){
        
        lblQuestion.text = "\(firstNumber) - \(secondNumber) = ?"
        
    }
    
    func printSimpleSubtractButtons(){
        
        if correctAnswer == 0 {
            btnAnswer0.setTitle("\(answer)", forState: UIControlState.Normal)
            btnAnswer1.setTitle("\(incorrectAnswer1)", forState: UIControlState.Normal)
            btnAnswer2.setTitle("\(incorrectAnswer2)", forState: UIControlState.Normal)
            btnAnswer3.setTitle("\(incorrectAnswer3)", forState: UIControlState.Normal)
            
        }
        
        if correctAnswer == 1 {
            btnAnswer0.setTitle("\(incorrectAnswer1)", forState: UIControlState.Normal)
            btnAnswer1.setTitle("\(answer)", forState: UIControlState.Normal)
            btnAnswer2.setTitle("\(incorrectAnswer2)", forState: UIControlState.Normal)
            btnAnswer3.setTitle("\(incorrectAnswer3)", forState: UIControlState.Normal)
            
        }
        
        if correctAnswer == 2 {
            btnAnswer0.setTitle("\(incorrectAnswer2)", forState: UIControlState.Normal)
            btnAnswer1.setTitle("\(incorrectAnswer1)", forState: UIControlState.Normal)
            btnAnswer2.setTitle("\(answer)", forState: UIControlState.Normal)
            btnAnswer3.setTitle("\(incorrectAnswer3)", forState: UIControlState.Normal)
            
        }
        
        if correctAnswer == 3 {
            btnAnswer0.setTitle("\(incorrectAnswer3)", forState: UIControlState.Normal)
            btnAnswer1.setTitle("\(incorrectAnswer1)", forState: UIControlState.Normal)
            btnAnswer2.setTitle("\(incorrectAnswer2)", forState: UIControlState.Normal)
            btnAnswer3.setTitle("\(answer)", forState: UIControlState.Normal)
            
        }
        
        
    }
    
    func algebraSubtract1(){
        
        firstNumber = Int(arc4random_uniform(251))
        secondNumber = Int(arc4random_uniform(251))
        
        if firstNumber < secondNumber {
            
            algebraSubtract1()
            
        }
        
        answer = firstNumber - secondNumber
        
        correctAnswer = Int(arc4random_uniform(4))
        incorrectAnswer1 = Int(arc4random_uniform(251))
        incorrectAnswer2 = Int(arc4random_uniform(251))
        incorrectAnswer3 = Int(arc4random_uniform(251))
        
        randomNumberCheck()
        
        printAlgebraSubtract1Buttons()
        
        printAlgebraSubtract1Question()
        
    }
    
    
    func printAlgebraSubtract1Question (){
        
        lblQuestion.text = "\(firstNumber) - ? = \(answer)"
        
    }
    
    func printAlgebraSubtract1Buttons(){
        
        if correctAnswer == 0 {
            btnAnswer0.setTitle("\(secondNumber)", forState: UIControlState.Normal)
            btnAnswer1.setTitle("\(incorrectAnswer1)", forState: UIControlState.Normal)
            btnAnswer2.setTitle("\(incorrectAnswer2)", forState: UIControlState.Normal)
            btnAnswer3.setTitle("\(incorrectAnswer3)", forState: UIControlState.Normal)
            
        }
        
        if correctAnswer == 1 {
            btnAnswer0.setTitle("\(incorrectAnswer1)", forState: UIControlState.Normal)
            btnAnswer1.setTitle("\(secondNumber)", forState: UIControlState.Normal)
            btnAnswer2.setTitle("\(incorrectAnswer2)", forState: UIControlState.Normal)
            btnAnswer3.setTitle("\(incorrectAnswer3)", forState: UIControlState.Normal)
            
        }
        
        if correctAnswer == 2 {
            btnAnswer0.setTitle("\(incorrectAnswer2)", forState: UIControlState.Normal)
            btnAnswer1.setTitle("\(incorrectAnswer1)", forState: UIControlState.Normal)
            btnAnswer2.setTitle("\(secondNumber)", forState: UIControlState.Normal)
            btnAnswer3.setTitle("\(incorrectAnswer3)", forState: UIControlState.Normal)
            
        }
        
        if correctAnswer == 3 {
            btnAnswer0.setTitle("\(incorrectAnswer3)", forState: UIControlState.Normal)
            btnAnswer1.setTitle("\(incorrectAnswer1)", forState: UIControlState.Normal)
            btnAnswer2.setTitle("\(incorrectAnswer2)", forState: UIControlState.Normal)
            btnAnswer3.setTitle("\(secondNumber)", forState: UIControlState.Normal)
            
        }
        
        
    }
    
    
    func algebraSubtract2(){
        
        firstNumber = Int(arc4random_uniform(251))
        secondNumber = Int(arc4random_uniform(251))
        
        if firstNumber < secondNumber {
            
            algebraSubtract2()
            
        }
        
        answer = firstNumber - secondNumber
        
        correctAnswer = Int(arc4random_uniform(4))
        incorrectAnswer1 = Int(arc4random_uniform(251))
        incorrectAnswer2 = Int(arc4random_uniform(251))
        incorrectAnswer3 = Int(arc4random_uniform(251))
        
        randomNumberCheck()
        
        printAlgebraSubtract2Buttons()
        
        printAlgebraSubtract2Question()
        
    }
    
    
    func printAlgebraSubtract2Question (){
        
        lblQuestion.text = "? - \(secondNumber) = \(answer)"
        
    }
    
    func printAlgebraSubtract2Buttons(){
        
        if correctAnswer == 0 {
            btnAnswer0.setTitle("\(firstNumber)", forState: UIControlState.Normal)
            btnAnswer1.setTitle("\(incorrectAnswer1)", forState: UIControlState.Normal)
            btnAnswer2.setTitle("\(incorrectAnswer2)", forState: UIControlState.Normal)
            btnAnswer3.setTitle("\(incorrectAnswer3)", forState: UIControlState.Normal)
            
        }
        
        if correctAnswer == 1 {
            btnAnswer0.setTitle("\(incorrectAnswer1)", forState: UIControlState.Normal)
            btnAnswer1.setTitle("\(firstNumber)", forState: UIControlState.Normal)
            btnAnswer2.setTitle("\(incorrectAnswer2)", forState: UIControlState.Normal)
            btnAnswer3.setTitle("\(incorrectAnswer3)", forState: UIControlState.Normal)
            
        }
        
        if correctAnswer == 2 {
            btnAnswer0.setTitle("\(incorrectAnswer2)", forState: UIControlState.Normal)
            btnAnswer1.setTitle("\(incorrectAnswer1)", forState: UIControlState.Normal)
            btnAnswer2.setTitle("\(firstNumber)", forState: UIControlState.Normal)
            btnAnswer3.setTitle("\(incorrectAnswer3)", forState: UIControlState.Normal)
            
        }
        
        if correctAnswer == 3 {
            btnAnswer0.setTitle("\(incorrectAnswer3)", forState: UIControlState.Normal)
            btnAnswer1.setTitle("\(incorrectAnswer1)", forState: UIControlState.Normal)
            btnAnswer2.setTitle("\(incorrectAnswer2)", forState: UIControlState.Normal)
            btnAnswer3.setTitle("\(firstNumber)", forState: UIControlState.Normal)
            
        }
        
        
    }
    
    func simpleMulitply(){
        
        firstNumber = Int(arc4random_uniform(20))
        secondNumber = Int(arc4random_uniform(20))
        
        firstNumber = firstNumber + 1
        secondNumber = secondNumber + 1
        
        answer = firstNumber * secondNumber
        
        correctAnswer = Int(arc4random_uniform(4))
        incorrectAnswer1 = Int(arc4random_uniform(401))
        incorrectAnswer2 = Int(arc4random_uniform(401))
        incorrectAnswer3 = Int(arc4random_uniform(401))
        
        randomNumberCheck()
        
        printSimpleMultiplyQuestion()
        
        printSimpleMultiplyButtons()
        
        
    }
    
    func printSimpleMultiplyQuestion (){
        
        lblQuestion.text = "\(firstNumber) x \(secondNumber) = ?"
        
    }
    
    func printSimpleMultiplyButtons(){
        
        if correctAnswer == 0 {
            btnAnswer0.setTitle("\(answer)", forState: UIControlState.Normal)
            btnAnswer1.setTitle("\(incorrectAnswer1)", forState: UIControlState.Normal)
            btnAnswer2.setTitle("\(incorrectAnswer2)", forState: UIControlState.Normal)
            btnAnswer3.setTitle("\(incorrectAnswer3)", forState: UIControlState.Normal)
            
        }
        
        if correctAnswer == 1 {
            btnAnswer0.setTitle("\(incorrectAnswer1)", forState: UIControlState.Normal)
            btnAnswer1.setTitle("\(answer)", forState: UIControlState.Normal)
            btnAnswer2.setTitle("\(incorrectAnswer2)", forState: UIControlState.Normal)
            btnAnswer3.setTitle("\(incorrectAnswer3)", forState: UIControlState.Normal)
            
        }
        
        if correctAnswer == 2 {
            btnAnswer0.setTitle("\(incorrectAnswer2)", forState: UIControlState.Normal)
            btnAnswer1.setTitle("\(incorrectAnswer1)", forState: UIControlState.Normal)
            btnAnswer2.setTitle("\(answer)", forState: UIControlState.Normal)
            btnAnswer3.setTitle("\(incorrectAnswer3)", forState: UIControlState.Normal)
            
        }
        
        if correctAnswer == 3 {
            btnAnswer0.setTitle("\(incorrectAnswer3)", forState: UIControlState.Normal)
            btnAnswer1.setTitle("\(incorrectAnswer1)", forState: UIControlState.Normal)
            btnAnswer2.setTitle("\(incorrectAnswer2)", forState: UIControlState.Normal)
            btnAnswer3.setTitle("\(answer)", forState: UIControlState.Normal)
            
        }
        
        
    }
    
    func algebraMultiply(){
        
        firstNumber = Int(arc4random_uniform(20))
        secondNumber = Int(arc4random_uniform(20))
        
        firstNumber = firstNumber + 1
        secondNumber = secondNumber + 1
        
        algebraMultiplyQuestion = Int(arc4random_uniform(2))
        
        answer = firstNumber * secondNumber
        
        correctAnswer = Int(arc4random_uniform(4))
        incorrectAnswer1 = Int(arc4random_uniform(401))
        incorrectAnswer2 = Int(arc4random_uniform(401))
        incorrectAnswer3 = Int(arc4random_uniform(401))
        
        randomNumberCheck()
        
        if algebraMultiplyQuestion == 0 {
            
            printAlgebraMultiplyQuestion1()
        }
        
        if algebraMultiplyQuestion == 1 {
            
            printAlgebraMultiplyQuestion2()
        }
        
        printAlgebraMultiplyButtons()
        
        
    }
    
    func printAlgebraMultiplyQuestion1(){
        
        lblQuestion.text = "\(firstNumber) x ? = \(answer)"
    }
    
    func printAlgebraMultiplyQuestion2(){
        
        lblQuestion.text = "? x \(firstNumber) = \(answer)"
    }
    
    
    func printAlgebraMultiplyButtons(){
        
        if correctAnswer == 0 {
            btnAnswer0.setTitle("\(secondNumber)", forState: UIControlState.Normal)
            btnAnswer1.setTitle("\(incorrectAnswer1)", forState: UIControlState.Normal)
            btnAnswer2.setTitle("\(incorrectAnswer2)", forState: UIControlState.Normal)
            btnAnswer3.setTitle("\(incorrectAnswer3)", forState: UIControlState.Normal)
            
        }
        
        if correctAnswer == 1 {
            btnAnswer0.setTitle("\(incorrectAnswer1)", forState: UIControlState.Normal)
            btnAnswer1.setTitle("\(secondNumber)", forState: UIControlState.Normal)
            btnAnswer2.setTitle("\(incorrectAnswer2)", forState: UIControlState.Normal)
            btnAnswer3.setTitle("\(incorrectAnswer3)", forState: UIControlState.Normal)
            
        }
        
        if correctAnswer == 2 {
            btnAnswer0.setTitle("\(incorrectAnswer2)", forState: UIControlState.Normal)
            btnAnswer1.setTitle("\(incorrectAnswer1)", forState: UIControlState.Normal)
            btnAnswer2.setTitle("\(secondNumber)", forState: UIControlState.Normal)
            btnAnswer3.setTitle("\(incorrectAnswer3)", forState: UIControlState.Normal)
            
        }
        
        if correctAnswer == 3 {
            btnAnswer0.setTitle("\(incorrectAnswer3)", forState: UIControlState.Normal)
            btnAnswer1.setTitle("\(incorrectAnswer1)", forState: UIControlState.Normal)
            btnAnswer2.setTitle("\(incorrectAnswer2)", forState: UIControlState.Normal)
            btnAnswer3.setTitle("\(secondNumber)", forState: UIControlState.Normal)
            
        }
        
        
    }
    

    func simpleDivide(){
        
        
        firstNumber = Int(arc4random_uniform(401))
        secondNumber = Int(arc4random_uniform(51))
        
        remainder = firstNumber % secondNumber
        
        firstNumber = firstNumber - remainder
        
        if firstNumber <= secondNumber {
            
            simpleDivide()
            
        }
    
        answer = firstNumber / secondNumber

        correctAnswer = Int(arc4random_uniform(4))
        incorrectAnswer1 = Int(arc4random_uniform(51))
        incorrectAnswer2 = Int(arc4random_uniform(51))
        incorrectAnswer3 = Int(arc4random_uniform(51))
        
        randomNumberCheck()
        
        printSimpleDivideQuestion()
        
        printSimpleDivideButtons()
        
        

    }
    
    func printSimpleDivideQuestion (){
        
        lblQuestion.text = "\(firstNumber) ÷ \(secondNumber) = ?"
        
    }
    
    func printSimpleDivideButtons(){
        
        if correctAnswer == 0 {
            btnAnswer0.setTitle("\(answer)", forState: UIControlState.Normal)
            btnAnswer1.setTitle("\(incorrectAnswer1)", forState: UIControlState.Normal)
            btnAnswer2.setTitle("\(incorrectAnswer2)", forState: UIControlState.Normal)
            btnAnswer3.setTitle("\(incorrectAnswer3)", forState: UIControlState.Normal)
            
        }
        
        if correctAnswer == 1 {
            btnAnswer0.setTitle("\(incorrectAnswer1)", forState: UIControlState.Normal)
            btnAnswer1.setTitle("\(answer)", forState: UIControlState.Normal)
            btnAnswer2.setTitle("\(incorrectAnswer2)", forState: UIControlState.Normal)
            btnAnswer3.setTitle("\(incorrectAnswer3)", forState: UIControlState.Normal)
            
        }
        
        if correctAnswer == 2 {
            btnAnswer0.setTitle("\(incorrectAnswer2)", forState: UIControlState.Normal)
            btnAnswer1.setTitle("\(incorrectAnswer1)", forState: UIControlState.Normal)
            btnAnswer2.setTitle("\(answer)", forState: UIControlState.Normal)
            btnAnswer3.setTitle("\(incorrectAnswer3)", forState: UIControlState.Normal)
            
        }
        
        if correctAnswer == 3 {
            btnAnswer0.setTitle("\(incorrectAnswer3)", forState: UIControlState.Normal)
            btnAnswer1.setTitle("\(incorrectAnswer1)", forState: UIControlState.Normal)
            btnAnswer2.setTitle("\(incorrectAnswer2)", forState: UIControlState.Normal)
            btnAnswer3.setTitle("\(answer)", forState: UIControlState.Normal)
            
        }
        
        
    }
    
    
    func algebraDivide1(){
        
        
        firstNumber = Int(arc4random_uniform(401))
        secondNumber = Int(arc4random_uniform(51))
        
        remainder = firstNumber % secondNumber
        
        firstNumber = firstNumber - remainder
        
        if firstNumber <= secondNumber {
            
            algebraDivide1()
            
        }
        
        answer = firstNumber / secondNumber
        
        correctAnswer = Int(arc4random_uniform(4))
        incorrectAnswer1 = Int(arc4random_uniform(51))
        incorrectAnswer2 = Int(arc4random_uniform(51))
        incorrectAnswer3 = Int(arc4random_uniform(51))
        
        randomNumberCheck()
        
       
        printAlgebraDivide1Question()
        printAlgebraDivide1Buttons()
        
        
        
    }
    
    func printAlgebraDivide1Question(){
        
        lblQuestion.text = "\(firstNumber) ÷ ? = \(answer)"
        
    }
    
    func printAlgebraDivide1Buttons(){
        
        if correctAnswer == 0 {
            btnAnswer0.setTitle("\(secondNumber)", forState: UIControlState.Normal)
            btnAnswer1.setTitle("\(incorrectAnswer1)", forState: UIControlState.Normal)
            btnAnswer2.setTitle("\(incorrectAnswer2)", forState: UIControlState.Normal)
            btnAnswer3.setTitle("\(incorrectAnswer3)", forState: UIControlState.Normal)
            
        }
        
        if correctAnswer == 1 {
            btnAnswer0.setTitle("\(incorrectAnswer1)", forState: UIControlState.Normal)
            btnAnswer1.setTitle("\(secondNumber)", forState: UIControlState.Normal)
            btnAnswer2.setTitle("\(incorrectAnswer2)", forState: UIControlState.Normal)
            btnAnswer3.setTitle("\(incorrectAnswer3)", forState: UIControlState.Normal)
            
        }
        
        if correctAnswer == 2 {
            btnAnswer0.setTitle("\(incorrectAnswer2)", forState: UIControlState.Normal)
            btnAnswer1.setTitle("\(incorrectAnswer1)", forState: UIControlState.Normal)
            btnAnswer2.setTitle("\(secondNumber)", forState: UIControlState.Normal)
            btnAnswer3.setTitle("\(incorrectAnswer3)", forState: UIControlState.Normal)
            
        }
        
        if correctAnswer == 3 {
            btnAnswer0.setTitle("\(incorrectAnswer3)", forState: UIControlState.Normal)
            btnAnswer1.setTitle("\(incorrectAnswer1)", forState: UIControlState.Normal)
            btnAnswer2.setTitle("\(incorrectAnswer2)", forState: UIControlState.Normal)
            btnAnswer3.setTitle("\(secondNumber)", forState: UIControlState.Normal)
            
        }
        
        
    }
    
    func algebraDivide2(){
        
        
        firstNumber = Int(arc4random_uniform(401))
        secondNumber = Int(arc4random_uniform(51))
        
        remainder = firstNumber % secondNumber
        
        firstNumber = firstNumber - remainder
        
        if firstNumber <= secondNumber {
            
            algebraDivide2()
            
        }
        
        answer = firstNumber / secondNumber
        
        correctAnswer = Int(arc4random_uniform(4))
        incorrectAnswer1 = Int(arc4random_uniform(51))
        incorrectAnswer2 = Int(arc4random_uniform(51))
        incorrectAnswer3 = Int(arc4random_uniform(51))
        
        randomNumberCheck()
        
        
        printAlgebraDivide2Question()
        printAlgebraDivide2Buttons()
        
        
        
    }
    
    func printAlgebraDivide2Question(){
        
        lblQuestion.text = "? ÷ \(secondNumber) = \(answer)"
        
    }
    
    func printAlgebraDivide2Buttons(){
        
        if correctAnswer == 0 {
            btnAnswer0.setTitle("\(firstNumber)", forState: UIControlState.Normal)
            btnAnswer1.setTitle("\(incorrectAnswer1)", forState: UIControlState.Normal)
            btnAnswer2.setTitle("\(incorrectAnswer2)", forState: UIControlState.Normal)
            btnAnswer3.setTitle("\(incorrectAnswer3)", forState: UIControlState.Normal)
            
        }
        
        if correctAnswer == 1 {
            btnAnswer0.setTitle("\(incorrectAnswer1)", forState: UIControlState.Normal)
            btnAnswer1.setTitle("\(firstNumber)", forState: UIControlState.Normal)
            btnAnswer2.setTitle("\(incorrectAnswer2)", forState: UIControlState.Normal)
            btnAnswer3.setTitle("\(incorrectAnswer3)", forState: UIControlState.Normal)
            
        }
        
        if correctAnswer == 2 {
            btnAnswer0.setTitle("\(incorrectAnswer2)", forState: UIControlState.Normal)
            btnAnswer1.setTitle("\(incorrectAnswer1)", forState: UIControlState.Normal)
            btnAnswer2.setTitle("\(firstNumber)", forState: UIControlState.Normal)
            btnAnswer3.setTitle("\(incorrectAnswer3)", forState: UIControlState.Normal)
            
        }
        
        if correctAnswer == 3 {
            btnAnswer0.setTitle("\(incorrectAnswer3)", forState: UIControlState.Normal)
            btnAnswer1.setTitle("\(incorrectAnswer1)", forState: UIControlState.Normal)
            btnAnswer2.setTitle("\(incorrectAnswer2)", forState: UIControlState.Normal)
            btnAnswer3.setTitle("\(firstNumber)", forState: UIControlState.Normal)
            
        }
        
        
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    


    
    
    
    

}

