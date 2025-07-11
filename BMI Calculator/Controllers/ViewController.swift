//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textHeight: UILabel!
    @IBOutlet weak var textWeight: UILabel!
    
    @IBOutlet weak var heightOfSlider: UISlider!
    @IBOutlet weak var weightOfSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        
        let height = String(format: "%.2f", sender.value)
        textHeight.text = "\(height) m"
    }
    

    @IBAction func weightSliderChanged(_ sender: UISlider) {
        
        let weight = String(format: "%.0f", sender.value)
        textWeight.text = "\(weight) kg"
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let BmiValue: Float = weightOfSlider.value / pow(heightOfSlider.value, 2)
        
        print("bmi value is: \(BmiValue)")
        let categoryOfBmi=getBMICategory(bmi: BmiValue)
        print("your catogory is \(categoryOfBmi)")
    }
    
    
    func getBMICategory(bmi: Float) -> String {
        switch bmi {
        case ..<18.5:
            return "Underweight"
        case 18.5..<25:
            return "Normal weight"
        case 25..<30:
            return "Overweight"
        case 30..<35:
            return "Obesity Class I"
        case 35..<40:
            return "Obesity Class II"
        default:
            return "Obesity Class III"
        }
    }
    
    
}

