//
//  ViewController.swift
//  quizApp
//
//  Created by Pradeep Kumar on 29/12/2016.
//  Copyright © 2016 Pradeep Kumar. All rights reserved.
//

import UIKit
    var score = 0
class ViewController: UIViewController {
    
    let questions = ["Favorite city?", "Birth place?", "Best holiday?"]
    let answers = [["London", "NY", "Delhi"],["Chirawa", "Pune","Jaipur"],["Peris","Switzerland","Goa"]]

    // Variables
    var currentQuestion = 0
    var rightAnswerPlacement:UInt32 = 0

    
    
    @IBOutlet var question: UILabel!
    
    @IBAction func responseBtn(_ sender: AnyObject) {
        
        if (sender.tag == Int(rightAnswerPlacement)){
            print("!!!!!!!!!!!!!!!!!!!!!!!!Right!!!!!!!!!!!!!!!!!!!!!!!!!")
            score += 1
            
        }else{
            print("!!!!!!!!!!!!!!!!!!!!!!!!WRONG!!!!!!!!!!!!!!!!!!!!!!!!!")
        }
        
        if(currentQuestion != questions.count){
            displayNewQuestion()
        }else{
            currentQuestion = 0
            performSegue(withIdentifier: "showScore", sender: self)
        
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        displayNewQuestion()
    }
    
    func displayNewQuestion(){
        question.text = questions[currentQuestion]
        
        rightAnswerPlacement = arc4random_uniform(3)+1
        
        var button:UIButton = UIButton()
        
        var x = 1
        
        for i in 1...3{
            button = view.viewWithTag(i) as! UIButton
            
            if (i == Int(rightAnswerPlacement))
            {
                button.setTitle(answers[currentQuestion][0], for: .normal)
            }
            else{
                button.setTitle(answers[currentQuestion][x], for: .normal)
                x = 2
            }
            
        }
        currentQuestion += 1
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

