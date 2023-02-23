//
//  PlanetCollectionViewCell.swift
//  Planets
//
//  Created by Diante Lewis-Jolley on 2/23/23.
//  Copyright © 2023 Lambda Inc. All rights reserved.
//

import UIKit

class PlanetCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var planetImageView: UIImageView!
    
    @IBOutlet weak var planetLabel: UILabel!
    
    // The Planet that the cell should display in its views
    var planet: Planet? {
        didSet {
            // Any time the planet's values changes, run this code.
            updateViews()
        }
    }
    
    func updateViews() {
        
        planetImageView?.image = planet?.image
        planetLabel.text = planet?.name
    }
    
}
