//
//  HistoryViewController.swift
//  RockPaperScissors
//
//  Created by Márcio Oliveira on 8/11/20.
//  Copyright © 2020 Gabrielle Miller-Messner. All rights reserved.
//

import UIKit

// MARK: - HistoryViewController: UIViewController

class HistoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    // MARK: Properties
    
    var history = [RPSMatch]()

    override func viewDidLoad() {
        super.viewDidLoad()
        print(self.history)
    }
    
    // MARK: Actions
    
    @IBAction func backButtonPressed(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: Table View Delegate
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.history.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HistoryCell", for: indexPath)
        let match = self.history[indexPath.row]
        
        cell.textLabel?.text = resultDefaultLabel(match)
        cell.detailTextLabel?.text = resultDetailLabel(match)
        
        return cell
    }
    
    // MARK: Results for cells labels
    
    func resultDefaultLabel(_ match: RPSMatch) -> String {
        if match.p1 == match.p2 {
            return "Tie!"
        }
        
        return match.p1.defeats(match.p2) ? "Win!" : "Lose!"
    }
    
    func resultDetailLabel(_ match: RPSMatch) -> String {
        return match.p1.description + " vs " + match.p2.description
    }
}
