//
//  ResultViewController.swift
//  Tipsy
//
//  Created by 杨殿擎 on 2022/12/2.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var result: String?
    var number : String?
    var per: Int?
    override func viewDidLoad() {
        super.viewDidLoad()
        resutLabel.text = result
        // Do any additional setup after loading the view.
        advice.text = "Split between \(number!) people, with \(per!)% tip."
    }
    

    @IBOutlet weak var advice: UILabel!
    @IBOutlet weak var resutLabel: UILabel!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func ret(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
