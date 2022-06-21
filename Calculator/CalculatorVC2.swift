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
    var result: Double = 0
    var operation: String = ""
    var isResultFound: Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonsUIsetup()
    }
    
    fileprivate func getNumber(_ number: String) {
        if operation.isEmpty{
            firstNumber += number
            currentTextField.text = firstNumber
        }else{
            secondNumber += number
            currentTextField.text = secondNumber
        }
    }
    
    @IBAction func numberTapped(_ sender: UIButton) {
        
        if isResultFound{
            reset()
        }
        
        switch sender.tag{
        case 0:
            getNumber("0")
        case 1:
            getNumber("1")
        case 2:
            getNumber("2")
        case 3:
            getNumber("3")
        case 4:
            getNumber("4")
        case 5:
            getNumber("5")
        case 6:
            getNumber("6")
        case 7:
            getNumber("7")
        case 8:
            getNumber("8")
        case 9:
            getNumber("9")
        default:
            print ("There is no such numbers")
        }
    }
    
    @IBAction func operations(_ sender: UIButton) {
            
        switch sender.tag{
        case 10:
            operation = "+"
        case 11:
            operation = "-"
        case 12:
            operation = "*"
        case 13:
            operation = "/"
        case 14:
            if operation.isEmpty{
                operation = "%"
            }
        default:
            print("Error. Please, try again")
        }
    }
    
    @IBAction func findTheResult(_ sender: UIButton) {
        guard let first = Double(firstNumber), let second = Double(secondNumber) else {
            print("There is no number")
            return}
        
        switch operation{
        case "+":
            result = first + second
            firstNumber = "\(result)"
            currentTextField.text = "\(result)"
        case "-":
            result = first - second
            firstNumber = "\(result)"
            currentTextField.text = "\(result)"
        case "*":
            result = first * second
            firstNumber = "\(result)"
            currentTextField.text = "\(result)"
        case "/":
            if second == 0{
                currentTextField.text = "Division by 0"
            } else{
                result = first / second
                firstNumber = "\(result)"
                currentTextField.text = "\(result)"
            }
        case "%":
            result = first * second / 100
            firstNumber = "\(result)"
            currentTextField.text = "\(result)"
        default:
            print("Go home! You are tired")
        }
        
        isResultFound = true
        
    }
    @IBAction func dotButton(_ sender: UIButton) {
        print("dot tapped")
        if operation.isEmpty{
            firstNumber += "."
            currentTextField.text = firstNumber
        }else{
            secondNumber += "."
            currentTextField.text = secondNumber
        }
    }
    
    @IBAction func findPercent(_ sender: UIButton) {
        if operation != "%"{
            guard let first = Double(firstNumber), let second = Double(secondNumber) else {
                print("Another method of finding percent")
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
            
            isResultFound = true
            
            currentTextField.text = "\(result)"
        }
    }
    
    @IBAction func clear(_ sender: UIButton) {
        reset()
        currentTextField.text = "0"
    }
    
    @IBAction func reverseSign(_ sender: UIButton) {
        if isResultFound{
            if result > 0{
                result = -result
            } else{
                result = abs(result)
            }
            currentTextField.text = "\(result)"
        } else if !isResultFound && !operation.isEmpty{
            if var second = Int(secondNumber){
                if second > 0 {
                    second = -second
                    secondNumber = "\(second)"
                } else{
                    second = abs(second)
                    secondNumber = "\(second)"
                }
                currentTextField.text = secondNumber
            }
        } else{
            if var first = Int(firstNumber){
                if first > 0 {
                    first = -first
                    firstNumber = "\(first)"
                } else{
                    first = abs(first)
                    firstNumber = "\(first)"
                }
                currentTextField.text = firstNumber
            }
        }
    }
    
    
    func reset(){
        firstNumber = ""
        secondNumber = ""
        result = 0
        operation = ""
        isResultFound = false
    }
    
    fileprivate func buttonsUIsetup() {
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
    }
}
