//
//  ViewController.swift
//  TextFieldsChallenge
//
//  Created by Márcio Oliveira on 8/5/20.
//  Copyright © 2020 Márcio Oliveira. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Outlets
    @IBOutlet var zipCodeTextField: UITextField!
    @IBOutlet var cashTextField: UITextField! // Fill from right to left: $0.01 -> $0.12 -> $1.23 -> $12.34 -> $123.45
    @IBOutlet var lockableTextField: UITextField!
    @IBOutlet var lockSwitch: UISwitch!
    
    // MARK: Text Field Delegate objects
    let zipCodeDelegate = ZipCodeTextFieldDelegate()
    let cashDelegate = CashTextFieldDelegate()
    
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.zipCodeTextField.delegate = zipCodeDelegate
        self.cashTextField.delegate = cashDelegate
        self.lockableTextField.delegate = self
        self.lockSwitch.isOn = false
    }
    
    // MARK: Lockable Text Field Delegate
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return self.lockSwitch.isOn
    }
    
    // MARK: UISwitch Action
    @IBAction func toggleLockSwitch(sender: UISwitch) {
        if sender.isOn {
            self.lockableTextField.placeholder = "Edit is enabled"
        } else {
            self.lockableTextField.placeholder = "Edit is disabled"
            self.lockableTextField.text = ""
            self.lockableTextField.resignFirstResponder()
        }
    }
}

