//
//  SettingsViewController.swift
//  Planets
//
//  Created by Diante Lewis-Jolley on 2/23/23.
//  Copyright © 2023 Lambda Inc. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var shouldShowPlutoSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
        // Do any additional setup after loading the view.
    }
    
    private func updateViews() {
        
        // Get wither pluto should be a planet from UserDefaults
        
        let shouldShowPluto = UserDefaults.standard.bool(forKey: .shouldShowPlutoKey)
        
        shouldShowPlutoSwitch.isOn = shouldShowPluto
    }
    
    
    
    
    @IBAction func changeShouldShowPluto(_ sender: Any) {
        
        // Set wether Pluto should be a planet or not in UserDefaults
        UserDefaults.standard.set(shouldShowPlutoSwitch.isOn, forKey: .shouldShowPlutoKey)
        
        
    }
    

    @IBAction func doneHasBeenTapped(_ sender: Any) {
        
        dismiss(animated: true)
    }
    
}
