//
//  FirstViewController.swift
//  ToDo
//
//  Created by Gergely Revay on 12/16/14.
//  Copyright (c) 2014 gerionsecurity. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate {

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        println("create table length")
        return (NSUserDefaults.standardUserDefaults().objectForKey("todoId") as String).toInt()!
        
    }
    

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        println("printing cell")
        var cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        cell.textLabel?.text = NSUserDefaults.standardUserDefaults().objectForKey(String(indexPath.row)) as? String
        return cell
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

