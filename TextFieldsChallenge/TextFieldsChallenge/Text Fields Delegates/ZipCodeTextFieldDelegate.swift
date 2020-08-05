//
//  ZipCodeTextFieldDelegate.swift
//  TextFieldsChallenge
//
//  Created by Márcio Oliveira on 8/5/20.
//  Copyright © 2020 Márcio Oliveira. All rights reserved.
//

import Foundation
import UIKit

class ZipCodeTextFieldDelegate : NSObject, UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("zip: \(string)")
        return true
    }
}
