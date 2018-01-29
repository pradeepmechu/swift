//
//  SecondViewController.swift
//  ToDoList
//
//  Created by Pradeep Kumar on 28/12/2016.
//  Copyright © 2016 Pradeep Kumar. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBAction func addItemAction(_ sender: AnyObject) {
        
        if (inputItem.text != "")
        {
            list.append(inputItem.text!)
            inputItem.text = ""
        }
    }
    
    @IBOutlet var inputItem: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

