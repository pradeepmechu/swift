//
//  ScoreViewController.swift
//  quizApp
//
//  Created by Pradeep Kumar on 29/12/2016.
//  Copyright © 2016 Pradeep Kumar. All rights reserved.
//

import UIKit

class ScoreViewController: UIViewController {
    
    @IBOutlet var scoreLbl: UILabel!
    
    @IBAction func backBtn(_ sender: AnyObject) {
        
        score = 0
        
        self.dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        scoreLbl.text = String(score)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
