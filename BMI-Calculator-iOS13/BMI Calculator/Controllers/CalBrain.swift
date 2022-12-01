//
//  CalBrain.swift
//  BMI Calculator
//
//  Created by 杨殿擎 on 2022/12/2.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation

struct CalBrain{
    var bmi: BMI?
    mutating func calBMI (height: Float, weight: Float){
        let bmiValue = weight / height / height
        bmi = BMI(value: bmiValue)
    }
    func getBMIValue() -> String {
        String(format: "%.1f", bmi?.value ?? 0)
    }
}
