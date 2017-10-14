//
//  ViewController.swift
//  Animations
//
//  Created by dly on 10/13/17.
//  Copyright © 2017 dly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var startStopButton: UIButton!
    
    var counter = 0
    var timer = Timer()
    var isAnimating = false
    
    @IBAction func startStopButtonPressed(_ sender: UIButton) {
        
        if isAnimating {
            timer.invalidate()
            startStopButton.backgroundColor = UIColor.green
            startStopButton.setTitle("Start Animation", for: [])
            isAnimating = false
            
        } else {
            timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.animate), userInfo: nil, repeats: true)
            startStopButton.backgroundColor = UIColor.red
            startStopButton.setTitle("Stop Animation", for: [])
            isAnimating = true
        }
    }
    
    //Transition Effects
    @IBAction func fadeInButtonPressed(_ sender: UIButton) {
        imageView.alpha = 0
        
        UIView.animate(withDuration: 1, animations: {
            self.imageView.alpha = 1
        })
    }
    
    @IBAction func slideInButtonPressed(_ sender: UIButton) {
        imageView.center = CGPoint(x: imageView.center.x - 500, y: imageView.center.y)
        
        UIView.animate(withDuration: 2) {
            self.imageView.center = CGPoint(x: self.imageView.center.x + 500, y: self.imageView.center.y)
        }
    }
    
    @IBAction func growButtonPressed(_ sender: UIButton) {
        imageView.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        
        UIView.animate(withDuration: 1) {
            self.imageView.frame = CGRect(x: 0, y: 0, width: 380, height: 380)
        }
    }
    
    //Function
    @objc func animate() {
        imageView.image = UIImage(named: "WonderWoman_\(counter)")
        counter += 1
        if counter == 23 {
            counter = 0
        }
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

