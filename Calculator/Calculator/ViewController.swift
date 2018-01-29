//
//  ViewController.swift
//  Calculator
//
//  Created by Pradeep Kumar on 03/01/2017.
//  Copyright © 2017 Pradeep Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var numberOnScreen:Double = 0
    var previousNumber: Double = 0
    var performingMath = false
    var operation = 0
    
    @IBOutlet var label: UILabel!

    @IBAction func numbers(_ sender: UIButton) {
        
        if performingMath || label.text=="0"
        {
            label.text = String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
            performingMath = false
        } else{
            label.text = label.text! + String(sender.tag - 1)
            numberOnScreen = Double(label.text!)!

        }
        
    }
    
    
    @IBAction func buttons(_ sender: UIButton) {
        
        if sender.tag == 16 // =
        {
            if operation == 12 // Divide
            {
                label.text = String(previousNumber / numberOnScreen)
            } else if operation == 13 // Multiply
            {
                label.text = String(previousNumber * numberOnScreen)
            } else if operation == 14 // Minus
            {
                label.text = String(previousNumber - numberOnScreen)
            } else if operation == 15 // Plus
            {
                label.text = String(previousNumber + numberOnScreen)
            }
            numberOnScreen = Double(label.text!)!
            
        }
        else if sender.tag == 11 // C
        {
            label.text = "0"
            previousNumber = 0
            numberOnScreen = 0
            operation = 0
            performingMath = false
        } else{
            
            if !performingMath && label.text != ""// handling double click on the operation button
            {
                previousNumber = Double(label.text!)!
            }
            if sender.tag == 12 // Divide
            {
                label.text = "/"
            } else if sender.tag == 13 // Multiply
            {
                label.text = "x"
            } else if sender.tag == 14 // Minus
            {
                label.text = "-"
            } else if sender.tag == 15 // Plus
            {
                label.text = "+"
            }
            
            operation = sender.tag
            performingMath = true
        }

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

