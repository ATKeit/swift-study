//
//  ViewController.swift
//  timer
//
//  Created by B.Cheolu on 13/08/2019.
//  Copyright © 2019 B.Cheolu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var lblTimer: UILabel!
    @IBOutlet var btnStart: UIButton!
    @IBOutlet var btnReset: UIButton!
    
    var timer: Timer? = nil
    var status = 0
    
    let timerSelector: Selector = #selector(ViewController.updateTime)
    let interval = 0.1
    var count = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        btnStart.setTitle("start", for: .normal)
        btnReset.setTitle("reset", for: .normal)
    }
    @IBAction func btnStart(_ sender: UIButton!) {
        if(status == 0) {
            timer = Timer.scheduledTimer(timeInterval: interval, target: self, selector: timerSelector, userInfo: nil, repeats: true)
            status = 1
            setButton()
        } else {
            timer?.invalidate()
            timer = nil
            status = 0
            setButton()
        }
    }
    
    @IBAction func btnReset(_ sender: UIButton!) {
        timer?.invalidate()
        timer = nil
        
        count = 0
        status = 0
        setButton()
        setTimerTxt()
    }
    
    
    @objc func updateTime() {
        count += interval
        setTimerTxt()
    }
    
    func setTimerTxt() {
        lblTimer.text = String(format: "%.1f", count)
    }
    
    func setButton() {
        if(status == 0) {
            btnStart.setTitle("start", for: .normal)
        } else {
            btnStart.setTitle("stop", for: .normal)
        }
    }
}

