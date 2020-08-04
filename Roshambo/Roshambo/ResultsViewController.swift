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
    
    enum Moves: Int {
        case rock = 0, paper, scissors
    }
    
     // MARK: Outlets
    
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var resultImage: UIImageView!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        computeResults()
    }
     
    // MARK: Compute results
    
    func computeResults() {
        if let humanValue = self.humanValue {
            if let computerValue = self.computerValue {
                let humanMove = Moves(rawValue: humanValue)!
                let computerMove = Moves(rawValue: computerValue)!
                
                if (humanMove == .rock && computerMove == .scissors) || (humanMove == .scissors && computerMove == .rock) {
                    displayWinner(humanWinner: humanMove == .rock, message: "Rock crushes scissors!", image: "RockCrushesScissors")
                } else if (humanMove == .paper && computerMove == .rock) || (humanMove == .rock && computerMove == .paper) {
                    displayWinner(humanWinner: humanMove == .paper, message: "Paper covers rock!", image: "PaperCoversRock")
                } else if (humanMove == .scissors && computerMove == .paper) || (humanMove == .paper && computerMove == .scissors) {
                    displayWinner(humanWinner: humanMove == .scissors, message: "Scissors cut paper!",image:  "ScissorsCutPaper")
                } else {
                    displayWinner(humanWinner: nil, message: "It's a Tie!", image: "itsATie")
                }
            } else {
                showAlert("Oops", message: "Error getting computer value")
            }
        } else {
            showAlert("Oops", message: "Error getting human value")
        }
    }
    
    // MARK: Display results
    
    func displayWinner(humanWinner: Bool?, message: String, image: String) {
        var messageWinner = ""
        if let humanWinner = humanWinner {
            messageWinner = " You \(humanWinner ? "win" : "loose")."
        }
        
        self.resultLabel.text = "\(message)\(messageWinner)"
        self.resultImage.image = UIImage(named: image)
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
