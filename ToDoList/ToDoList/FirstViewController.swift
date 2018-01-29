//
//  FirstViewController.swift
//  ToDoList
//
//  Created by Pradeep Kumar on 28/12/2016.
//  Copyright © 2016 Pradeep Kumar. All rights reserved.
//

import UIKit

var list = ["Grocessory shopping", "Aarav's cloths from Next", "Suit from Zara", "Shirts fro Zara"]


class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    @IBOutlet var tblView: UITableView!
    
    

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        
        return list.count
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            list.remove(at: indexPath.row)
            tblView.reloadData()
        }
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        tblView.reloadData()
        
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

