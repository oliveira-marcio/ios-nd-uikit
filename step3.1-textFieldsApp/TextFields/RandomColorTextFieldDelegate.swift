//
//  RandomColorTextFieldDelegate.swift
//  TextFields
//
//  Created by Márcio Oliveira on 8/5/20.
//  Copyright © 2020 Udacity. All rights reserved.
//

import Foundation
import UIKit

class RandomColorTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    func randomColor() -> UIColor {
        let r: CGFloat = CGFloat(arc4random() % 256) / 255
        let g: CGFloat = CGFloat(arc4random() % 256) / 255
        let b: CGFloat = CGFloat(arc4random() % 256) / 255
        
        return UIColor(red: r, green: g, blue: b, alpha: 1.0)
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        textField.textColor = self.randomColor()
        return true
    }
}
