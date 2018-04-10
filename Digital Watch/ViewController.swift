//
//  ViewController.swift
//  Digital Watch
//
//  Created by D7703_26 on 2018. 4. 10..
//  Copyright © 2018년 조영진. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timer: UILabel!
    var num = Timer();
    @IBOutlet weak var `switch`: UISwitch!
    @IBOutlet weak var amPm: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
                `switch`.setOn(false, animated: true)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func startTime() {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss"
        timer.text = formatter.string(from: date)
        formatter.dateFormat = "a"
        amPm.text = formatter.string(from: date)
        

    }
    
    @IBAction func startSwitch(_ sender: Any) {
        if `switch`.isOn == true {
            //            myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
            
            // closure 사용
            num = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {(num) in
                self.startTime()
            })
            
        } else {
            num.invalidate()
            
        }
    }
        
    }
    

