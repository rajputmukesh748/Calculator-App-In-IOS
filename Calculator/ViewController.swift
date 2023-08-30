//
//  ViewController.swift
//  Calculator
//
//  Created by Mukesh Rajput on 30/11/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textShow: UITextField!
    var firstVariable: String = ""
    var secondVariable: String = ""
    var operation: String = ""
    var total: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func acClick(_ sender: Any) {
        firstVariable = ""
        secondVariable = ""
        total = ""
        textShow.text = ""
    }
    
    @IBAction func plusMinusClick(_ sender: Any) {
        firstVariable = ""
        secondVariable = ""
        total = ""
        textShow.text = ""
    }
    
    @IBAction func modulusClick(_ sender: Any) {
        if(!secondVariable.isEmpty){
            firstVariable = secondVariable
            secondVariable = ""
        }
        operation = "%"
        textShow.text = firstVariable + " % " + secondVariable
    }
    
    @IBAction func divide(_ sender: Any) {
        if(!secondVariable.isEmpty){
            firstVariable = secondVariable
            secondVariable = ""
        }
        operation = "/"
        textShow.text = firstVariable + " / " + secondVariable
    }
    
    @IBAction func multiply(_ sender: Any) {
        if(!secondVariable.isEmpty){
            firstVariable = secondVariable
            secondVariable = ""
        }
        operation = "*"
        textShow.text = firstVariable + " * " + secondVariable
    }
    
    @IBAction func minus(_ sender: Any) {
        if(!secondVariable.isEmpty){
            firstVariable = secondVariable
            secondVariable = ""
        }
        operation = "-"
        textShow.text = firstVariable + " - " + secondVariable
    }
    
    @IBAction func addition(_ sender: Any) {
        if(!secondVariable.isEmpty){
            firstVariable = secondVariable
            secondVariable = ""
        }
        operation = "+"
        textShow.text = firstVariable + " + " + secondVariable
    }
    
    @IBAction func dot(_ sender: Any) {
        if(!secondVariable.contains(".")){
            secondVariable = secondVariable + "."
            textShow.text = (textShow.text ?? "0") + "."
        }
    }
    
    @IBAction func result(_ sender: Any) {
        if(!firstVariable.isEmpty && !secondVariable.isEmpty){
            switch(operation){
            case "+" :
                let total = (Double(firstVariable) ?? 0.0) + (Double(secondVariable) ?? 0.0)
                textShow.text = String(total)
            case "-":
                let total = (Double(firstVariable) ?? 0.0) - (Double(secondVariable) ?? 0.0)
                textShow.text = String(total)
            case "*":
                let total = (Double(firstVariable) ?? 0.0) * (Double(secondVariable) ?? 0.0)
                textShow.text = String(total)
            case "/":
                let total = (Double(firstVariable) ?? 0.0) / (Double(secondVariable) ?? 0.0)
                textShow.text = String(total)
            case "%":
                let total = (Int(firstVariable) ?? 0) % (Int(secondVariable) ?? 0)
                textShow.text = String(total)
            default:
                textShow.text = "0.0"
            }
        }
    }
    
    @IBAction func seven(_ sender: Any) {
        secondVariable = secondVariable + "7"
        textShow.text = (textShow.text ?? "0") + "7"
    }
    
    @IBAction func eight(_ sender: Any) {
        secondVariable = secondVariable + "8"
        textShow.text = (textShow.text ?? "0") + "8"
    }
    
    @IBAction func nine(_ sender: Any) {
        secondVariable = secondVariable + "9"
        textShow.text = (textShow.text ?? "0") + "9"
    }
    
    @IBAction func four(_ sender: Any) {
        secondVariable = secondVariable + "4"
        textShow.text = (textShow.text ?? "0") + "4"
    }
    
    @IBAction func five(_ sender: Any) {
        secondVariable = secondVariable + "5"
        textShow.text = (textShow.text ?? "0") + "5"
    }
    
    @IBAction func six(_ sender: Any) {
        secondVariable = secondVariable + "6"
        textShow.text = (textShow.text ?? "0") + "6"
    }
    
    @IBAction func one(_ sender: Any) {
        secondVariable = secondVariable + "1"
        textShow.text = (textShow.text ?? "0") + "1"
    }
    
    @IBAction func two(_ sender: Any) {
        secondVariable = secondVariable + "2"
        textShow.text = (textShow.text ?? "0") + "2"
    }
    
    @IBAction func three(_ sender: Any) {
        secondVariable = secondVariable + "3"
        textShow.text = (textShow.text ?? "0") + "3"
    }
    
    @IBAction func zero(_ sender: Any) {
        secondVariable = secondVariable + "0"
        textShow.text = (textShow.text ?? "0") + "0"
    }
    
}

