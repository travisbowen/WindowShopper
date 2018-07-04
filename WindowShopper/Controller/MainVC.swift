//
//  ViewController.swift
//  WindowShopper
//
//  Created by TBone on 7/3/18.
//  Copyright © 2018 UpscaleApps. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTextField: CurrencyTextField!
    @IBOutlet weak var priceTextField: CurrencyTextField!
    @IBOutlet weak var resultsLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Create calculate button and properties
        let calcButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcButton.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        calcButton.setTitle("Calculate", for: .normal)
        calcButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcButton.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        //Add calc button to textfield keyboards
        wageTextField.inputAccessoryView = calcButton
        priceTextField.inputAccessoryView = calcButton
        
        resultsLabel.isHidden = true
        hoursLabel.isHidden = true
    }
    
    
    @IBAction func clearCalculatorButtonPressed(_ sender: UIButton) {
        resultsLabel.isHidden = true
        hoursLabel.isHidden = true
        wageTextField.text = ""
        priceTextField.text = ""
    }
    
    
    //Calc button function on tap
    @objc func calculate(){
        if let userWage = wageTextField.text, let userPrice = priceTextField.text{
            if let wage = Double(userWage), let price = Double(userPrice){
                view.endEditing(true)
                resultsLabel.isHidden = false
                hoursLabel.isHidden = false
                resultsLabel.text = "\(Wage.calcHours(wage: wage, price: price))"
            }
        }
    }
}

