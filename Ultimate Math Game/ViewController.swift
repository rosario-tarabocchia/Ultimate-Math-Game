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


    @IBOutlet weak var lblCorrect: UILabel!
    @IBOutlet weak var lblIncorrect: UILabel!
    @IBOutlet weak var lblCorrectIncorrect: UILabel!

    @IBOutlet weak var lblFirstNumber: UILabel!
    @IBOutlet weak var lblSecondNumber: UILabel!
    @IBOutlet weak var lblAnswer: UILabel!
    @IBOutlet weak var lblEquation: UILabel!
    
    
    @IBOutlet weak var lblCorrectLabel: UILabel!
    @IBOutlet weak var lblIncorrectLabel: UILabel!
    
    
    @IBOutlet weak var lblUnknown1: UILabel!
    @IBOutlet weak var lblUnknown2: UILabel!
    @IBOutlet weak var lblUnknown3: UILabel!
    
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
    
    var buttoncolors : Int = 0
    
    
    
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
        totalCorrect = 0
        totalIncorrect = 0
        textColorReset()
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
        
        randombuttoncolors()

        
        

        
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
        
        lblIncorrect.textColor = UIColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
        
        lblCorrect.textColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        lblIncorrectLabel.textColor = UIColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
        
        lblCorrectLabel.textColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        
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
    
        
        lblCorrect.textColor = UIColor(red: 0.0, green: 0.0, blue: 1.0, alpha: 1.0)
        
        lblIncorrect.textColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        lblIncorrectLabel.textColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        lblCorrectLabel.textColor = UIColor(red: 0.0, green: 0.0, blue: 1.0, alpha: 1.0)
        
        
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
        
        printAnswerButtons()
        
        printSimpleAddQuestion()
        
        
    }
    
    
    func printSimpleAddQuestion (){
        
        lblFirstNumber.text = "\(firstNumber)"
        lblSecondNumber.text = "\(secondNumber)"
        lblAnswer.text = ""
        lblUnknown1.text = ""
        lblUnknown2.text = ""
        lblUnknown3.text = "?"
        lblEquation.text = "+"
        
        
        
    }
    
    
    func printAnswerButtons(){
        
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
        
        printSecondNumberButtons()
        
        
    }
    
    func printAlgebraAddQuestion1(){
        
        lblFirstNumber.text = "\(firstNumber)"
        lblSecondNumber.text = ""
        lblAnswer.text = "\(answer)"
        lblUnknown1.text = ""
        lblUnknown2.text = "?"
        lblUnknown3.text = ""
        lblEquation.text = "+"
    }
    
    func printAlgebraAddQuestion2(){
        
        lblFirstNumber.text = ""
        lblSecondNumber.text = "\(firstNumber)"
        lblAnswer.text = "\(answer)"
        lblUnknown1.text = "?"
        lblUnknown2.text = ""
        lblUnknown3.text = ""
        lblEquation.text = "+"
    }
    
    
    func printSecondNumberButtons(){
        
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
        
        printAnswerButtons()
        
        
    }
    
    func printSimpleSubtractQuestion (){
        
        lblFirstNumber.text = "\(firstNumber)"
        lblSecondNumber.text = "\(secondNumber)"
        lblAnswer.text = ""
        lblUnknown1.text = ""
        lblUnknown2.text = ""
        lblUnknown3.text = "?"
        lblEquation.text = "-"
        
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
        
        printSecondNumberButtons()
        
        printAlgebraSubtract1Question()
        
    }
    
    
    func printAlgebraSubtract1Question (){
        
        lblFirstNumber.text = "\(firstNumber)"
        lblSecondNumber.text = ""
        lblAnswer.text = "\(answer)"
        lblUnknown1.text = ""
        lblUnknown2.text = "?"
        lblUnknown3.text = ""
        lblEquation.text = "-"
        
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
        
        printFirstNumberButtons()
        
        printAlgebraSubtract2Question()
        
    }
    
    
    func printAlgebraSubtract2Question (){
        
        lblFirstNumber.text = ""
        lblSecondNumber.text = "\(secondNumber)"
        lblAnswer.text = "\(answer)"
        lblUnknown1.text = "?"
        lblUnknown2.text = ""
        lblUnknown3.text = ""
        lblEquation.text = "-"
        
    }
    
    func printFirstNumberButtons(){
        
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
        
        printAnswerButtons()
        
        
    }
    
    func printSimpleMultiplyQuestion (){
        
        lblFirstNumber.text = "\(firstNumber)"
        lblSecondNumber.text = "\(secondNumber)"
        lblAnswer.text = ""
        lblUnknown1.text = ""
        lblUnknown2.text = ""
        lblUnknown3.text = "?"
        lblEquation.text = "x"
        
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
        
        printSecondNumberButtons()
        
        
    }
    
    func printAlgebraMultiplyQuestion1(){
        
        lblFirstNumber.text = "\(firstNumber)"
        lblSecondNumber.text = ""
        lblAnswer.text = "\(answer)"
        lblUnknown1.text = ""
        lblUnknown2.text = "?"
        lblUnknown3.text = ""
        lblEquation.text = "x"
    }
    
    func printAlgebraMultiplyQuestion2(){
        
        lblFirstNumber.text = ""
        lblSecondNumber.text = "\(firstNumber)"
        lblAnswer.text = "\(answer)"
        lblUnknown1.text = "?"
        lblUnknown2.text = ""
        lblUnknown3.text = ""
        lblEquation.text = "x"
    }
    

    func simpleDivide(){
        
        
        firstNumber = Int(arc4random_uniform(401))
        secondNumber = Int(arc4random_uniform(51))
        
        secondNumber = secondNumber + 1
        
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
        
        printAnswerButtons()
        
        

    }
    
    func printSimpleDivideQuestion (){
        
        lblFirstNumber.text = "\(firstNumber)"
        lblSecondNumber.text = "\(secondNumber)"
        lblAnswer.text = ""
        lblUnknown1.text = ""
        lblUnknown2.text = ""
        lblUnknown3.text = "?"
        lblEquation.text = "÷"
        
    }
    
    
    func algebraDivide1(){
        
        
        firstNumber = Int(arc4random_uniform(401))
        secondNumber = Int(arc4random_uniform(51))
        
        secondNumber = secondNumber + 1
        
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
        printSecondNumberButtons()
        
        
        
    }
    
    func printAlgebraDivide1Question(){
        
        lblFirstNumber.text = "\(firstNumber)"
        lblSecondNumber.text = ""
        lblAnswer.text = "\(answer)"
        lblUnknown1.text = ""
        lblUnknown2.text = "?"
        lblUnknown3.text = ""
        lblEquation.text = "÷"
        
    }
    
    
    func algebraDivide2(){
        
        
        firstNumber = Int(arc4random_uniform(401))
        secondNumber = Int(arc4random_uniform(51))
        
        secondNumber = secondNumber + 1
        
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
        printFirstNumberButtons()
            
        
        
        
        
    }
    
    func printAlgebraDivide2Question(){
        
        lblFirstNumber.text = ""
        lblSecondNumber.text = "\(secondNumber)"
        lblAnswer.text = "\(answer)"
        lblUnknown1.text = "?"
        lblUnknown2.text = ""
        lblUnknown3.text = ""
        lblEquation.text = "÷"
        
    }
    
    
    func randombuttoncolors(){
        
        buttoncolors = Int(arc4random_uniform(4))
        
        if buttoncolors == 0 {
        
            btnAnswer0.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 1.0, alpha: 1.0)
            btnAnswer1.backgroundColor = UIColor(red: 1.0, green: 0.0, blue: 1.0, alpha: 1.0)
            btnAnswer2.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 0.0, alpha: 1.0)
            btnAnswer3.backgroundColor = UIColor(red: 1.0, green: 0.5, blue: 0.0, alpha: 1.0)

        }
        
        
        if buttoncolors == 1 {
            
            btnAnswer1.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 1.0, alpha: 1.0)
            btnAnswer2.backgroundColor = UIColor(red: 1.0, green: 0.0, blue: 1.0, alpha: 1.0)
            btnAnswer3.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 0.0, alpha: 1.0)
            btnAnswer0.backgroundColor = UIColor(red: 1.0, green: 0.5, blue: 0.0, alpha: 1.0)
            
        }
        
        if buttoncolors == 2 {
            
            btnAnswer2.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 1.0, alpha: 1.0)
            btnAnswer3.backgroundColor = UIColor(red: 1.0, green: 0.0, blue: 1.0, alpha: 1.0)
            btnAnswer0.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 0.0, alpha: 1.0)
            btnAnswer1.backgroundColor = UIColor(red: 1.0, green: 0.5, blue: 0.0, alpha: 1.0)
            
        }
        
        
        if buttoncolors == 3 {
            
            btnAnswer3.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 1.0, alpha: 1.0)
            btnAnswer0.backgroundColor = UIColor(red: 1.0, green: 0.0, blue: 1.0, alpha: 1.0)
            btnAnswer1.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 0.0, alpha: 1.0)
            btnAnswer2.backgroundColor = UIColor(red: 1.0, green: 0.5, blue: 0.0, alpha: 1.0)
            
        }

        
        
        
    }
    
    
    func textColorReset(){
        
        lblCorrect.textColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    
        lblIncorrect.textColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        lblIncorrectLabel.textColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        lblCorrectLabel.textColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
    }
    
    
}

