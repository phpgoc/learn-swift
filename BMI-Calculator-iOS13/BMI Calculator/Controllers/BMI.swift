//
//  BMI.swift
//  BMI Calculator
//
//  Created by 杨殿擎 on 2022/12/2.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit


struct BMI{
    let value: Float
    let advice: String
    let color : UIColor
    init(value: Float) {
        self.value = value
        if value > 25 {
            self.advice = "Over weight"
            self.color = .red
        }else if value > 19 {
            self.advice = "Normal"
            self.color = .green
        }else{
            self.advice = "Eat more pies"
            self.color = .blue
        }

    }
}
