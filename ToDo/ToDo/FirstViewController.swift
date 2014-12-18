//
//  FirstViewController.swift
//  ToDo
//
//  Created by Gergely Revay on 12/16/14.
//  Copyright (c) 2014 gerionsecurity. All rights reserved.
//

import UIKit

var todoItemList:[String] = []

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var taskTable: UITableView!
    

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        //println("create table length")
        return todoItemList.count
    }
    

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        //println("printing cell")
        var cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        cell.textLabel?.text = todoItemList[indexPath.row]
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
    
    override func viewWillAppear(animated: Bool) {
        println("reloading")
        if var storedTodoList : AnyObject = NSUserDefaults.standardUserDefaults().objectForKey("todoList") {
            todoItemList = []
            
            for var i = 0; i < storedTodoList.count; i++ {
                todoItemList.append(storedTodoList[i] as String)
            }
        }
        taskTable.reloadData()
    }

    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        println("editingstyle")
        
        if (editingStyle == UITableViewCellEditingStyle.Delete) {
            println("deleting")
            todoItemList.removeAtIndex(indexPath.row)
            let fixedTodoList = todoItemList
            NSUserDefaults.standardUserDefaults().setObject(fixedTodoList, forKey: "todoList")
            NSUserDefaults.standardUserDefaults().synchronize()
            
            taskTable.reloadData()
            
        }
    }

}

