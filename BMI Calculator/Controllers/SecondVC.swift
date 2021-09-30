//
//  SecondVC.swift
//  BMI Calculator
//
//  Created by Ahmed Sayed on 21/09/2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {
    
    var bmiValue: String?
    var bmiAdvice: String?
    var bmiColor: UIColor?
    
    @IBOutlet weak var bmiLbl: UILabel!
    @IBOutlet weak var adviceLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLbl.text = bmiValue
        view.backgroundColor = bmiColor
        adviceLbl.text = bmiAdvice
        
        // Creating views programatically
        //        view.backgroundColor = .darkGray
        //        let label = UILabel()
        //        label.text = "hello"
        //        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        //        view.addSubview(label)
    }
    
    @IBAction func recalculateBtnPressed(_ sender: Any) {
        _ = navigationController?.popViewController(animated: true)
        
        // if using segue
        //        dismiss(animated: true, completion: nil)
    }
}
