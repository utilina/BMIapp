//
//  ResultViewController.swift
//  BMIapp
//
//  Created by Анастасия Улитина on 02.11.2020.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiResult: String?
    var bmiAdvice: String?
    var bmiBackground: UIColor?
    
    @IBOutlet weak var bmiValue: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiValue.text = bmiResult
        bmiLabel.text = bmiAdvice
        view.backgroundColor = bmiBackground
        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
