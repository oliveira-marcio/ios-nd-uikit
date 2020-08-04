//
//  ViewController.swift
//  Roshambo
//
//  Created by Márcio Oliveira on 8/3/20.
//  Copyright © 2020 Márcio Oliveira. All rights reserved.
//

import UIKit

// MARK: MainViewController

class MainViewController: UIViewController {

    // MARK Generate computer moves
    
    func randomComputerMove() -> Int {
        return Int(arc4random() % 3)
    }

    // MARK Human moves
    
    @IBAction func playRock() {
        var controller: ResultsViewController
        controller = self.storyboard?.instantiateViewController(identifier: "ResultsViewController") as! ResultsViewController
        
        controller.humanValue = 0
        controller.computerValue = randomComputerMove()
        
        present(controller, animated: true, completion: nil)
    }
    
    @IBAction func playPaper() {
        performSegue(withIdentifier: "playPaper", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as! ResultsViewController

        if segue.identifier == "playPaper" {
            controller.humanValue = 1
        } else if segue.identifier == "playScissors" {
            controller.humanValue = 2
        }

        controller.computerValue = randomComputerMove()
    }
}

