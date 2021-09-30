//
//  DoubleExt.swift
//  BMI Calculator
//
//  Created by Ahmed Sayed on 19/09/2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation

extension Double {
    /// Rounds the double to decimal places value
    func rounded(toPlaces places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
