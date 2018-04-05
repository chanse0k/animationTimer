//
//  ViewController.swift
//  animationTimer
//
//  Created by D7703_27 on 2018. 4. 5..
//  Copyright © 2018년 D7703_27. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var imageCounter: UILabel!
    
    var counter = 1
    var myTimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imageCounter.text = String(counter)
    }
    @IBAction func play(_ sender: Any) {
        myTimer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.doAnimation), userInfo: nil, repeats: true)
    }
    @IBAction func stop(_ sender: Any) {
        myTimer.invalidate()
    }
    @objc func doAnimation() {
        if counter == 5 {
            counter = 1
        } else {
            counter = counter + 1
        }
        myImageView.image = UIImage(named: "frame\(counter).png")
        imageCounter.text = String(counter)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

