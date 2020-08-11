//
//  HistoryViewController.swift
//  RockPaperScissors
//
//  Created by Márcio Oliveira on 8/11/20.
//  Copyright © 2020 Gabrielle Miller-Messner. All rights reserved.
//

import UIKit

// MARK: - HistoryViewController: UIViewController

class HistoryViewController: UIViewController {
    
    // MARK: Properties
    
    var history = [RPSMatch]()

    override func viewDidLoad() {
        super.viewDidLoad()
        print(self.history)
    }
    
    @IBAction func backButtonPressed(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }

}
