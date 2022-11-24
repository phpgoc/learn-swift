//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = [#imageLiteral(resourceName: "ball1.png"),#imageLiteral(resourceName: "ball2.png"),#imageLiteral(resourceName: "ball3.png"),#imageLiteral(resourceName: "ball4.png"),#imageLiteral(resourceName: "ball5.png")]


    @IBOutlet weak var imageView: UIImageView!

    var inner: Int = 0
    var number : Int {
        get{
            inner
        }
        set{
            inner = newValue
            imageView.image = ballArray[inner]
        }
    }
    @IBAction func AskPressUp(_ sender: Any) {
        number = Int.random(in: 0...4)
    }
    
}

