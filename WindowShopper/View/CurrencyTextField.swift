//
//  CurrencyTextField.swift
//  WindowShopper
//
//  Created by TBone on 7/3/18.
//  Copyright © 2018 UpscaleApps. All rights reserved.
//

import UIKit

//Needed to show changes real time in storyboard
@IBDesignable

class CurrencyTextField: UITextField {
    
    //Shows changes in real time in storyboard
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    //Called when all file owners outlets and properties are set
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    //Creates custom text field
    func customizeView(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2541738014)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        if let p = placeholder{
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}
