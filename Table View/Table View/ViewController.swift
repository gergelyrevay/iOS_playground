//
//  ViewController.swift
//  Table View
//
//  Created by Gergely Revay on 12/16/14.
//  Copyright (c) 2014 gerionsecurity. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    
    let array = ["aaa", "bbb", "ccc", "ddd"]
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return array.count
    }

    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        
        cell.textLabel?.text = array[indexPath.row]
        
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

