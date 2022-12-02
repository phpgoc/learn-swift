//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bill: UITextField!
    var per: Int?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        per = 10
    }


    @IBOutlet weak var t1: UIButton!
    
    @IBOutlet weak var t2: UIButton!
    
    @IBOutlet weak var t3: UIButton!
    
    @IBAction func b1(_ sender: UIButton) {
        per = 0
        t1.isSelected = true
        t2.isSelected = false
        t3.isSelected = false
    }
    
    @IBAction func b2(_ sender: UIButton) {
        per = 10
        t1.isSelected = false
        t2.isSelected = true
        t3.isSelected = false
    }
    
    @IBAction func b3(_ sender: UIButton) {
        per = 20
        t1.isSelected = false
        t2.isSelected = false
        t3.isSelected = true
    }
    @IBOutlet weak var numberLabel: UILabel!

    @IBAction func numberStepper(_ sender: UIStepper) {
        numberLabel.text = String(Int(sender.value))
    }
    @IBAction func calPress(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let dest = segue.destination as! ResultViewController
            let billNumber :Float = Float(bill.text ?? "0") ?? 0
 
            let number :Float = billNumber * Float(100 + per!) / 100 / Float(numberLabel.text!)!
            dest.result = String(format:"%.2f",number)
            dest.number = numberLabel.text!
            dest.per = per
        }
    }
}

