//
//  ViewController.swift
//  BMIapp
//
//  Created by Анастасия Улитина on 02.11.2020.
//

import UIKit

class CalculateViewController: UIViewController {

    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightValue: UILabel!
    @IBOutlet weak var weightValue: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        heightSlider.value = 1.5
        weightSlider.value = 100
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderMove(_ sender: UISlider) {
        heightValue.text = "\(String(format: "%.2f", sender.value))m"
    }
    @IBAction func weightSliderMove(_ sender: UISlider) {
        weightValue.text = "\(Int(sender.value.rounded()))" + "Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        calculatorBrain.calculateBMI(height: height, weight: weight)
        self.performSegue(withIdentifier: "goToResults", sender: self)
        print(height)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiResult = calculatorBrain.getBMIValue()
            destinationVC.bmiAdvice = calculatorBrain.getBMILabel()
            destinationVC.bmiBackground = calculatorBrain.getBMIBackground()
        }
    }
    
}
