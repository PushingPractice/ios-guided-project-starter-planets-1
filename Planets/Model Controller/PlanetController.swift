//
//  PlanetController.swift
//  Planets
//
//  Created by Andrew R Madsen on 8/2/18.
//  Copyright © 2021 Bloom Institute of Technology Inc. All rights reserved.
//

import Foundation

class PlanetController {
    
    var planets: [Planet] {
        
        var results = [
            Planet(name: "Mercury", imageName: "mercury"),
            Planet(name: "Venus", imageName: "venus"),
            Planet(name: "Earth", imageName: "earth"),
            Planet(name: "Mars", imageName: "mars"),
            Planet(name: "Jupiter", imageName: "jupiter"),
            Planet(name: "Saturn", imageName: "saturn"),
            Planet(name: "Uranus", imageName: "uranus"),
            Planet(name: "Neptune", imageName: "neptune"),
        ]
        
        // Check if we need to include Pluto
        let shouldShowPluto = UserDefaults.standard.bool(forKey: .shouldShowPlutoKey)
        
        if shouldShowPluto == true {
            results.append(Planet(name: "Pluto", imageName: "pluto"))
        }
        
        return results
        
        
    }
}
