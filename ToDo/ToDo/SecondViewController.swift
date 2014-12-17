//
//  SecondViewController.swift
//  ToDo
//
//  Created by Gergely Revay on 12/16/14.
//  Copyright (c) 2014 gerionsecurity. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBAction func editingDone(sender: AnyObject) {
        if Title.text == "" {
            ErrorOut.text = "You need to set the title at least!"
        } else {
            var todoId:Int = 0
            if NSUserDefaults.standardUserDefaults().objectForKey("todoId") != nil {
                var todoIdString = NSUserDefaults.standardUserDefaults().objectForKey("todoId") as String
                todoId = todoIdString.toInt()! + 1
            }
            NSUserDefaults.standardUserDefaults().setObject(Title.text, forKey: String(todoId))
            NSUserDefaults.standardUserDefaults().setValue(String(todoId), forKey: "todoId")
            NSUserDefaults.standardUserDefaults().synchronize()
            println("todo saved")
        }
    }
    
    @IBOutlet weak var ErrorOut: UILabel!
    @IBOutlet weak var Description: UITextField!
    @IBOutlet weak var Title: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

