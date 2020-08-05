//
//  ViewController.swift
//  TextFieldsChallenge
//
//  Created by Márcio Oliveira on 8/5/20.
//  Copyright © 2020 Márcio Oliveira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var zipCodeField: UITextField! // Should have max 5 digits
    @IBOutlet var cashTextField: UITextField! // Fill from right to left: $0.01 -> $0.12 -> $1.23 -> $12.34 -> $123.45
    @IBOutlet var lockableTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

