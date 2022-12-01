//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by 杨殿擎 on 2022/12/2.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultController: UIViewController {

    var bmi: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = bmi ?? "1"
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var adviceLabel: UILabel!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func reButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
