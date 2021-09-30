//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        heightSlider.value = 1.5
        weightSlider.value = 100
        
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLbl.text = String(format: "%.2f", sender.value) + "m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLbl.text = String(Int(sender.value)) + "kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        if let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondVC") as? SecondVC {
            self.navigationController?.pushViewController(viewController, animated: true)
            viewController.bmiValue = calculatorBrain.getBMIValue()
            viewController.bmiAdvice = calculatorBrain.getAdvice()
            viewController.bmiColor = calculatorBrain.getColor()
        }
        
        
        
        // if creating the secondVC views programatically
        //        let secondVC = SecondVC()
        //        secondVC.bmi = String(format: "%.2f", bmi)
        //        self.present(secondVC, animated: true, completion: nil)
        
        
        // if using segues
        //        performSegue(withIdentifier: "SecondVCSegue", sender: self)
        
        
    }
    
    // if using segues
    //    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //        if segue.identifier == "SecondVCSegue" {
    //            let secondVC = segue.destination as! SecondVC
    //            secondVC.bmi = String(format: "%.2f", bmi)
    //        }
    //    }
}

