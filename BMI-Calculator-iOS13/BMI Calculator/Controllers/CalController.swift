//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalController: UIViewController {

    var calBraian = CalBrain()
    
    @IBOutlet weak var h: UILabel!
    
    @IBOutlet weak var w: UILabel!
    
    @IBOutlet weak var wSlider: UISlider!
    @IBOutlet weak var hSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func hightChange(_ sender: UISlider) {
        let v = String(format:"%.2f", sender.value)
        h.text = "\(v)m"
        
        
    }
    
    @IBAction func weightChange(_ sender: UISlider) {
        let v = String(format: "%.0f", sender.value)
        w.text = "\(v)kg"

    }
    var bmiStr :String = "0.0"
    @IBAction func cal(_ sender: UIButton) {
        let height = hSlider.value
        let weight = wSlider.value
        calBraian.calBMI(height: height, weight: weight)
        let bmi = weight / height / height
        bmiStr = String(format: "%.1f",bmi)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultController
            destinationVC.bmi = calBraian.getBMIValue()
        }
    }
}

