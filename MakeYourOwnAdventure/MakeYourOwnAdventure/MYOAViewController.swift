//
//  MYOAViewController.swift
//  MakeYourOwnAdventure
//
//  Created by Márcio Oliveira on 8/11/20.
//  Copyright © 2020 Márcio Oliveira. All rights reserved.
//

import UIKit

class MYOAViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Start Over", style: .plain, target: self, action: #selector(startOver))
    }
    
    @objc func startOver() {
        if let navigationController = navigationController {
            navigationController.popToRootViewController(animated: true)
        }
    }
}

