//
//  CashTextFieldDelegate.swift
//  TextFieldsChallenge
//
//  Created by Márcio Oliveira on 8/5/20.
//  Copyright © 2020 Márcio Oliveira. All rights reserved.
//

import Foundation
import UIKit

class CashTextFieldDelegate : NSObject, UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if isNumericOrBackspace(string) {
            var newText = textField.text! as NSString
            newText = newText.replacingCharacters(in: range, with: string) as NSString
            newText = newText.replacingOccurrences(of: ".", with: "") as NSString
            newText = newText.replacingOccurrences(of: "$", with: "") as NSString

            textField.text = String(format: "$%.02f", (Double(newText as String) ?? 0) / 100)
        }
        return false
    }
    
    func isNumericOrBackspace(_ string: String) -> Bool {
        return Int(string) != nil || strcmp(string, "\\b") == -92
    }
    
    func isBackSpace(_ string: String) -> Bool {
        return strcmp(string, "\\b") == -92
    }
}
