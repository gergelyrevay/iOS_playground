//
//  ViewController.swift
//  Stopwatch
//
//  Created by Gergely Revay on 12/4/14.
//  Copyright (c) 2014 gerionsecurity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var minutes:Int = 0
    var seconds:Int = 0
    var mseconds:Int = 0
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
            mseconds = 0
            minutes = 0
            seconds = 0
            counter.text = "00:00:00"
            isTimerRunning = true
            startButtonOutlet.title = "Restart"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var timer = NSTimer.scheduledTimerWithTimeInterval(0.01, target: self, selector: Selector("increaseSecond"), userInfo: nil, repeats: true)
        
        //timer.invalidate() stops the timer
        
        
    }
    
    func increaseSecond(){
        if (isTimerRunning){
            ++mseconds
            if mseconds == 100 {
                mseconds = 0
                seconds++
            }
            
            if seconds == 60 {
                seconds = 0
                minutes++
            }

            
            var strMsecond = String(mseconds)
            var strSecond = String(seconds)
            var strMinute = String(minutes)

            if mseconds < 10 {
                strMsecond = "0" + strMsecond
            }

            if seconds < 10 {
                strSecond = "0" + strSecond
            }

            if minutes < 10 {
                strMinute = "0" + strMinute
            }
            
            counter.text = "\(strMinute):\(strSecond):\(strMsecond)"
            println(mseconds)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

