//
//  VillainDetailViewController.swift
//  BondVillains
//
//  Created by Márcio Oliveira on 8/12/20.
//  Copyright © 2020 Udacity. All rights reserved.
//

import UIKit

class VillainDetailViewController: UIViewController {

    @IBOutlet weak var villainImage: UIImageView!
    @IBOutlet weak var villainLabel: UILabel!
    
    var villain: Villain!
    
    override func viewWillAppear(_ animated: Bool) {
        self.villainImage.image = UIImage(named: self.villain.imageName)
        self.villainLabel.text = villain.name
    }
}
