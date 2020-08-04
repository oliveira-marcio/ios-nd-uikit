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
            self.resultLabel.text = "Player: \(humanValue)"
        } else {
            self.resultLabel.text = "Error"
        }
    }
    

    @IBAction func dismiss() {
        self.dismiss(animated: true, completion: nil)
    }
}
