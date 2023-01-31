//
//  WeatherViewController.swift
//  WeatherApp
//
//  Created by Matthew Dolan on 2023-01-30.
//

import UIKit

class WeatherViewController: UIViewController {
    
    let backgroundView = UIImageView()
    
    let rootStackView = UIStackView()
    
    let searchStackView = UIStackView()
    let locationButton = UIButton()
    let searchButton = UIButton()
    let searchTextField = UITextField()

    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
}

extension WeatherViewController {
    
    // Step 1: style
    func style() {
        // backgroundView
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        backgroundView.image = UIImage(named: "background")
        backgroundView.contentMode = .scaleAspectFill
        
        // root stack view
        rootStackView.translatesAutoresizingMaskIntoConstraints = false
        rootStackView.axis = .vertical
        rootStackView.alignment = .trailing
        rootStackView.spacing = 10
        
        // search stack view
        searchStackView.translatesAutoresizingMaskIntoConstraints = false
        searchStackView.spacing = 8
        
        // location button
        locationButton.translatesAutoresizingMaskIntoConstraints = false
        locationButton.setBackgroundImage(UIImage(systemName: "location.circle.fill"), for: .normal)
        locationButton.tintColor = .label
        
        // search button
        searchButton.translatesAutoresizingMaskIntoConstraints = false
        searchButton.setBackgroundImage(UIImage(systemName: "magnifyingglass"), for: .normal)
        searchButton.tintColor = .label
        
        // search text field
        searchTextField.translatesAutoresizingMaskIntoConstraints = false
        searchTextField.font = UIFont.preferredFont(forTextStyle: .title1)
        searchTextField.placeholder = "Search"
        searchTextField.textAlignment = .right
        searchTextField.borderStyle = .roundedRect
        searchTextField.backgroundColor = .systemFill
    }
    
    
    // Step 2: Auto layout
    func layout() {
        // backgroundView
        view.addSubview(backgroundView)
        // root stackview
        view.addSubview(rootStackView)

        // root stackview
        rootStackView.addArrangedSubview(searchStackView)
        
        // search stackview
        searchStackView.addArrangedSubview(locationButton)
        searchStackView.addArrangedSubview(searchTextField)
        searchStackView.addArrangedSubview(searchButton)
        
        
        NSLayoutConstraint.activate([
            // backgroundView
            backgroundView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            // root stackview
            rootStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            rootStackView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: rootStackView.trailingAnchor, multiplier: 1),
            
            // search stackview
            searchStackView.widthAnchor.constraint(equalTo: rootStackView.widthAnchor),
            
            // location button
            locationButton.widthAnchor.constraint(equalToConstant: 40),
            locationButton.heightAnchor.constraint(equalToConstant: 40),
            // search button
            searchButton.widthAnchor.constraint(equalToConstant: 40),
            searchButton.heightAnchor.constraint(equalToConstant: 40),
        ])
        
    }
    
}

