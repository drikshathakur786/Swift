//
//  ViewController.swift
//  07 - Guided Light Project
//
//  Created by Driksha Thakur on 22/07/25.
//

import UIKit

class ViewController: UIViewController {
    
    var lightOn = true

    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    fileprivate func updateUI() {

        
        view.backgroundColor = lightOn ? .white : .black
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        lightOn.toggle()
        updateUI()
    }
    
}

