//
//  ViewController.swift
//  DoReMi
//
//  Created by Jason Schatz on 11/18/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import UIKit

// MARK: - ViewController: UIViewController, UITableViewDataSource

class ViewController: UIViewController, UITableViewDataSource {

    // MARK: Properties
    
    // Use this string property as your reuse identifier, 
    // Storyboard has been set up for you using this String.
    let cellReuseIdentifier = "MyCellReuseIdentifier"
    
    // Choose some data to show in your table
    
    let model = [
        ["note" : "C", "name" : "DO"],
        ["note" : "D", "name" : "RE"],
        ["note" : "E", "name" : "MI"],
        ["note" : "F", "name" : "FA"],
        ["note" : "G", "name" : "SO"],
        ["note" : "H", "name" : "LA"],
        ["note" : "I", "name" : "SI"]
    ]
    
    // MARK: UITableViewDataSource
    
    // Add the two essential table data source methods here
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.model.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let placeholderCell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier, for: indexPath)
        
        let row = self.model[indexPath.row]
        placeholderCell.textLabel?.text = row["note"]
        placeholderCell.detailTextLabel?.text = row["name"]
        
        return placeholderCell
    }
}
