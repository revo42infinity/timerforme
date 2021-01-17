//
//  ViewController.swift
//  timerforme
//
//  Created by owner on 1/17/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    
    var timer = Timer()
    var kalanzaman = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        kalanzaman = 15
        timeLabel.text = "Zaman: \(kalanzaman)"
        
  
     
        
    }

    @IBAction func timeButtton(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerfunc), userInfo: nil, repeats: true)
        
        
        
       
        
    }
    
    @objc func timerfunc() {
        //baslata tiklaninca once labeli guncelleyelim
        timeLabel.text = "Zaman: \(kalanzaman)"
        kalanzaman = kalanzaman - 1
        
        if kalanzaman == 0 {
            timeLabel.text = "sure bitti"
            timer.invalidate()
            kalanzaman = 15
        }
        
    }
}

