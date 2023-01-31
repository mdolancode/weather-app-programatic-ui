//
//  WeatherViewController.swift
//  WeatherApp
//
//  Created by Matthew Dolan on 2023-01-30.
//

import UIKit

class WeatherViewController: UIViewController {
    
    let backgroundView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
}

extension WeatherViewController {
    
    // Step 1: style
    func style() {
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        backgroundView.image = UIImage(named: "day-background")
        backgroundView.contentMode = .scaleAspectFill
        
    }
    
    
    // Step 2: Auto layout
    func layout() {
        view.addSubview(backgroundView)
        
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
    }
    
}

