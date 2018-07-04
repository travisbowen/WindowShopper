//
//  Wage.swift
//  WindowShopper
//
//  Created by TBone on 7/3/18.
//  Copyright © 2018 UpscaleApps. All rights reserved.
//

import Foundation

class Wage {
    //Class function no object needed to use function
    class func calcHours(wage: Double, price: Double) -> Int{
        return Int(ceil(price / wage))
    }
}
