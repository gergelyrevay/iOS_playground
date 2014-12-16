//
//  ViewController.swift
//  TextLabelButton
//
//  Created by Gergely Revay on 12/16/14.
//  Copyright (c) 2014 gerionsecurity. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBAction func submit(sender: AnyObject) {
        TextOut.text = TextIn.text
    }
    @IBOutlet weak var TextOut: UILabel!
    @IBOutlet weak var TextIn: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        TextIn.resignFirstResponder()
        return true
    }


}

