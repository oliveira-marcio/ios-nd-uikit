//
//  ResultsViewController.swift
//  Roshambo
//
//  Created by Márcio Oliveira on 8/3/20.
//  Copyright © 2020 Márcio Oliveira. All rights reserved.
//

import UIKit

// MARK: ResultsViewController

class ResultsViewController: UIViewController {
    
    // MARK: Properties
    
    var humanValue: Int?
    var computerValue: Int?
    
     // MARK: Outlets
    
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var resultImage: UIImageView!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let humanValue = self.humanValue {
            if let computerValue = self.computerValue {
                self.resultLabel.text = "Player: \(humanValue) - \(computerValue)"
            } else {
                showAlert("Oops", message: "Error getting computer value")
            }
        } else {
            showAlert("Oops", message: "Error getting human value")
        }
    }
    
     // MARK: Error handling
    
    func showAlert(_ title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default) {_ in
            self.dismiss()
        }
        alert.addAction(okAction)
        
        self.present(alert, animated: true, completion: nil)
    }
    

    @IBAction func dismiss() {
        self.dismiss(animated: true, completion: nil)
    }
}
