//
//  CalculatorViewController.swift
//  Course2Week3Task1
//
//  Copyright © 2018 e-Legion. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

  @IBOutlet weak var resultLabel: UILabel!
  @IBOutlet weak var firstValueLabel: UILabel!
  @IBOutlet weak var secondValueLabel: UILabel!
  @IBOutlet weak var stepper: UIStepper!
  @IBOutlet weak var slider: UISlider!
  @IBOutlet weak var calculateButton: UIButton!
  
  override func viewDidLoad() {
        super.viewDidLoad()
    
    stepper.stepValue = 0.5
    stepper.setDecrementImage(stepper.decrementImage(for: .normal), for: .normal)
    stepper.setIncrementImage(stepper.incrementImage(for: .normal), for: .normal)
    stepper.layer.borderWidth = 1
    stepper.layer.cornerRadius = 4
    stepper.layer.borderColor = UIColor(named: "myOrange")?.cgColor
    stepper.tintColor = UIColor(named: "myOrange")
    }
  
  @IBAction func stepperChangeFirstValue(_ sender: Any) {
   let numberFormatter = NumberFormatter()
    numberFormatter.numberStyle = .decimal
    numberFormatter.minimumFractionDigits = 4
    numberFormatter.maximumFractionDigits = 4
    let value = self.stepper.value
    firstValueLabel.text = numberFormatter.string(from: value as NSNumber)
  }
  
  @IBAction func sliderChangesSecondValue(_ sender: Any) {
    let numberFormatter = NumberFormatter()
    numberFormatter.numberStyle = .decimal
    numberFormatter.minimumFractionDigits = 4
    numberFormatter.maximumFractionDigits = 4
    let value = self.slider.value
    secondValueLabel.text = numberFormatter.string(from: value as NSNumber)
  }
  
  @IBAction func calculateResult(_ sender: Any) {
    let numberFormatter = NumberFormatter()
    numberFormatter.numberStyle = .decimal
    numberFormatter.minimumFractionDigits = 4
    numberFormatter.maximumFractionDigits = 4
    let value = self.stepper.value * Double(self.slider.value)
    resultLabel.text = numberFormatter.string(from: value as NSNumber)
  }
}
