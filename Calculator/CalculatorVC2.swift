//
//  calculatorVC2.swift
//  Calculator
//
//  Created by Abai Kush on 11/6/22.
//

import UIKit

class CalculatorVC2: UIViewController {
    
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var equalButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var multiplyButton: UIButton!
    @IBOutlet weak var divideButton: UIButton!
    @IBOutlet weak var percentButton: UIButton!
    @IBOutlet weak var plusMinusButton: UIButton!
    @IBOutlet weak var dotButton: UIButton!
    
    @IBOutlet weak var currentTextField: UITextField!
    
    var firstNumber: String = ""
    var secondNumber: String = ""
    var result: Int = 0
    var operation: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        zeroButton.layer.cornerRadius = zeroButton.bounds.height / 4
        zeroButton.layer.masksToBounds = true
        
        oneButton.layer.cornerRadius = oneButton.bounds.height / 4
        oneButton.layer.masksToBounds = true
        
        twoButton.layer.cornerRadius = twoButton.bounds.height / 4
        twoButton.layer.masksToBounds = true
        
        threeButton.layer.cornerRadius = threeButton.bounds.height / 4
        threeButton.layer.masksToBounds = true
        
        fourButton.layer.cornerRadius = fourButton.bounds.height / 4
        fourButton.layer.masksToBounds = true
        
        fiveButton.layer.cornerRadius = fiveButton.bounds.height / 4
        fiveButton.layer.masksToBounds = true
        
        sixButton.layer.cornerRadius = sixButton.bounds.height / 4
        sixButton.layer.masksToBounds = true
        
        sevenButton.layer.cornerRadius = sevenButton.bounds.height / 4
        sevenButton.layer.masksToBounds = true
        
        eightButton.layer.cornerRadius = eightButton.bounds.height / 4
        eightButton.layer.masksToBounds = true
        
        nineButton.layer.cornerRadius = nineButton.bounds.height / 4
        nineButton.layer.masksToBounds = true
        
        clearButton.layer.cornerRadius = clearButton.bounds.height / 4
        clearButton.layer.masksToBounds = true
        
        equalButton.layer.cornerRadius = equalButton.bounds.height / 4
        equalButton.layer.masksToBounds = true
        
        plusButton.layer.cornerRadius = plusButton.bounds.height / 4
        plusButton.layer.masksToBounds = true
        
        minusButton.layer.cornerRadius = minusButton.bounds.height / 4
        minusButton.layer.masksToBounds = true
        
        multiplyButton.layer.cornerRadius = multiplyButton.bounds.height / 4
        multiplyButton.layer.masksToBounds = true
        
        divideButton.layer.cornerRadius = divideButton.bounds.height / 4
        divideButton.layer.masksToBounds = true
        
        percentButton.layer.cornerRadius = percentButton.bounds.height / 4
        percentButton.layer.masksToBounds = true
        
        plusMinusButton.layer.cornerRadius = plusMinusButton.bounds.height / 4
        plusMinusButton.layer.masksToBounds = true
        
        dotButton.layer.cornerRadius = dotButton.bounds.height / 4
        dotButton.layer.masksToBounds = true
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func numberTapped(_ sender: UIButton) {
        
        switch sender.tag{
        case 0:
            print("0")
            if operation.isEmpty{
                firstNumber += "0"
                currentTextField.text = firstNumber
            }else{
                secondNumber += "0"
                currentTextField.text = secondNumber
            }
        case 1:
            print("1")
            if operation.isEmpty{
                firstNumber += "1"
                currentTextField.text = firstNumber
            }else{
                secondNumber += "1"
                currentTextField.text = secondNumber
            }
        case 2:
            print("2")
            if operation.isEmpty{
                firstNumber += "2"
                currentTextField.text = firstNumber
            }else{
                secondNumber += "2"
                currentTextField.text = secondNumber
            }
        case 3:
            print("3")
            if operation.isEmpty{
                firstNumber += "3"
                currentTextField.text = firstNumber
            }else{
                secondNumber += "3"
                currentTextField.text = secondNumber
            }
        case 4:
            print("4")
            if operation.isEmpty{
                firstNumber += "4"
                currentTextField.text = firstNumber
            }else{
                secondNumber += "4"
                currentTextField.text = secondNumber
            }
        case 5:
            print("5")
            if operation.isEmpty{
                firstNumber += "5"
                currentTextField.text = firstNumber
            }else{
                secondNumber += "5"
                currentTextField.text = secondNumber
            }
        case 6:
            print("6")
            if operation.isEmpty{
                firstNumber += "6"
                currentTextField.text = firstNumber
            }else{
                secondNumber += "6"
                currentTextField.text = secondNumber
            }
        case 7:
            print("7")
            if operation.isEmpty{
                firstNumber += "7"
                currentTextField.text = firstNumber
            }else{
                secondNumber += "7"
                currentTextField.text = secondNumber
            }
        case 8:
            print("8")
            if operation.isEmpty{
                firstNumber += "8"
                currentTextField.text = firstNumber
            }else{
                secondNumber += "8"
                currentTextField.text = secondNumber
            }
        case 9:
            print("9")
            if operation.isEmpty{
                firstNumber += "9"
                currentTextField.text = firstNumber
            }else{
                secondNumber += "9"
                currentTextField.text = secondNumber
            }
        default:
            print ("There is no such numbers")
        }
    }
    
    @IBAction func operations(_ sender: UIButton) {
        switch sender.tag{
        case 10:
            print("+")
            operation = "+"
        case 11:
            print("-")
            operation = "-"
        case 12:
            print("*")
            operation = "*"
        case 13:
            print("/")
            operation = "/"
        default:
            print("Error. Please, try again")
        }
        
    }
    
    
    @IBAction func findTheResult(_ sender: UIButton) {
        guard let first = Int(firstNumber), let second = Int(secondNumber) else {
            print("There is no number")
            return}
        
        switch operation{
        case "+":
            result = first + second
        case "-":
            result = first - second
        case "*":
            result = first * second
        case "/":
            result = first / second
        default:
            print("Go home! You are tired")
        }
        
        currentTextField.text = "\(result)"
        reset()
    }
    @IBAction func findPercent(_ sender: UIButton) {
        guard let first = Int(firstNumber), let second = Int(secondNumber) else {
            print("There is no number")
            return}
        
        switch operation{
        case "+":
            result = first + (first / 100 * second)
        case "-":
            result = first - (first / 100 * second)
        case "*":
            result = first * (first / 100 * second)
        case "/":
            result = first / (first / 100 * second)
        default:
            print("Go home! You are tired")
        }
    @IBAction func clear(_ sender: UIButton) {
        reset()
        currentTextField.text = "0"
    }
    }
        
//    @IBAction func negativePositive(_ sender: UIButton) {
//    }
//    @IBAction func percent(_ sender: UIButton) {
//    }
    
    
    func reset(){
        firstNumber = ""
        secondNumber = ""
        result = 0
        operation = ""
    }
}

/*
 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Get the new view controller using segue.destination.
 // Pass the selected object to the new view controller.
 }
 */


