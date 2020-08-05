//
//  ViewController.swift
//  TextFieldsChallenge
//
//  Created by Márcio Oliveira on 8/5/20.
//  Copyright © 2020 Márcio Oliveira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var zipCodeTextField: UITextField! // Should have max 5 digits
    @IBOutlet var cashTextField: UITextField! // Fill from right to left: $0.01 -> $0.12 -> $1.23 -> $12.34 -> $123.45
    @IBOutlet var lockableTextField: UITextField!
    
    let zipCodeDelegate = ZipCodeTextFieldDelegate()
    let cashDelegate = CashTextFieldDelegate()
    let lockableDelegate = LockableTextFieldDelegate()

    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.zipCodeTextField.delegate = zipCodeDelegate
        self.cashTextField.delegate = cashDelegate
        self.lockableTextField.delegate = lockableDelegate
    }
}

