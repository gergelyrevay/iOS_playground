//
//  SecondViewController.swift
//  ToDo
//
//  Created by Gergely Revay on 12/16/14.
//  Copyright (c) 2014 gerionsecurity. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBAction func editingDone(sender: AnyObject) {
        if Title.text == "" {
            ErrorOut.text = "You need to set the title at least!"
        } else {
            todoItemList.append(Title.text)
            
            let fixedTodoList = todoItemList
            NSUserDefaults.standardUserDefaults().setObject(fixedTodoList, forKey: "todoList")
            NSUserDefaults.standardUserDefaults().synchronize()
            ErrorOut.text = "Item has been saved"
            println("todo saved")
            
            self.view.endEditing(true)
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
    
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
  


}

