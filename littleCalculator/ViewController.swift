//
//  ViewController.swift
//  littleCalculator
//
//  Created by Jason Hsu on 2018/7/28.
//  Copyright © 2018 junchoon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var firstNumberField: UITextField!
    @IBOutlet weak var secondNumberField: UITextField!
    @IBOutlet weak var operatorSelected: UISegmentedControl!
    @IBAction func operatorCalculatieSegment(_ sender: UISegmentedControl) {
        let calculator = operatorSelected.selectedSegmentIndex
        let firstNumber = firstNumberField.text
        let secondNumber = secondNumberField.text
        
        
        switch calculator {
        case 0:
            if let firstNumber = firstNumber, let secondNumber = secondNumber {
                let result:Int = Int(firstNumber)! + Int(secondNumber)!
                answerLabel.text = "\(result)"
            }
        case 1:
            if let firstNumber = firstNumber, let secondNumber = secondNumber {
                let result:Int = Int(firstNumber)! - Int(secondNumber)!
                answerLabel.text = "\(result)"
            }
        case 2:
            if let firstNumber = firstNumber, let secondNumber = secondNumber {
                let result:Int = Int(firstNumber)! * Int(secondNumber)!
                answerLabel.text = "\(result)"
            }
        case 3:
            if let firstNumber = firstNumber, let secondNumber = secondNumber {
                let result:Int = Int(firstNumber)! / Int(secondNumber)!
                answerLabel.text = "\(result)"
            }
        default:
            break
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstNumberField.placeholder = "數字1"
        secondNumberField.placeholder = "數字2"
        answerLabel.text = "我是答案"
    }


}

