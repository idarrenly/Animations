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
    
    var counter = 0
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        
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

