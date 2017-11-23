//
//  cipherPicker.swift
//  iOS_Playground
//
//  Created by Marvin Krüger on 23.11.17.
//  Copyright © 2017 Marvin Krüger. All rights reserved.
//

import Foundation
import UIKit

class cipherPicker : NSObject, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let fruits = ["AES", "Caesar"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return fruits.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return fruits[row]
    }
}


