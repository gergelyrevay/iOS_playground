//
//  ViewController.swift
//  Stopwatch
//
//  Created by Gergely Revay on 12/4/14.
//  Copyright (c) 2014 gerionsecurity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var seconds:Int = 0
    var isTimerRunning = false
    @IBOutlet weak var startButtonOutlet: UIBarButtonItem!
    @IBOutlet weak var pauseButtonOutlet: UIBarButtonItem!
    @IBOutlet weak var counter: UILabel!
    @IBAction func stopButton(sender: AnyObject) {
        isTimerRunning = false
        startButtonOutlet.title = "Start"
    }
    @IBAction func pauseButton(sender: AnyObject) {
        if isTimerRunning {
            pauseButtonOutlet.title = "Continue"
            isTimerRunning = false
        } else {
            pauseButtonOutlet.title = "Pause"
            isTimerRunning = true

        }
        
        
    }
    @IBAction func startButton(sender: AnyObject) {
            seconds = 0
            counter.text = "0"
            isTimerRunning = true
            startButtonOutlet.title = "Restart"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increaseSecond"), userInfo: nil, repeats: true)
        
        
    }
    
    func increaseSecond(){
        if (isTimerRunning){
            counter.text = String(++seconds)
            println(seconds)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

