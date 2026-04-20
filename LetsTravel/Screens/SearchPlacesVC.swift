//
//  SearchPlacesVC.swift
//  LetsTravel
//
//  Created by Zygimantas Domeikis on 16/04/2026.
//

import UIKit

class SearchPlacesVC: UIViewController {
    
    let titleLabel = LTTitleLabel(textAlignment: .center, fontSize: 30)
    let searchTextField = LTTextField()
    let actionButton = LTButton(backgroundColor: .secondarySystemBackground, title: "Search")
    let backgroundView = UIImageView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    func configureUI() {
        view.addSubview(titleLabel)
        view.addSubview(searchTextField)
        view.addSubview(actionButton)
        view.addSubview(backgroundView)
        
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        backgroundView.image = UIImage(named: "background")
        backgroundView.contentMode = .scaleAspectFill
        backgroundView.clipsToBounds = true
        
        titleLabel.text = "Lets Travel!"
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            backgroundView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            backgroundView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            backgroundView.widthAnchor.constraint(equalToConstant: 400),
            backgroundView.heightAnchor.constraint(equalToConstant: 350),
            
            searchTextField.topAnchor.constraint(equalTo: backgroundView.bottomAnchor),
            searchTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            searchTextField.widthAnchor.constraint(equalToConstant: 300),
            searchTextField.heightAnchor.constraint(equalToConstant: 50),
            
            actionButton.topAnchor.constraint(equalTo: searchTextField.bottomAnchor, constant: 50),
            actionButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            actionButton.widthAnchor.constraint(equalToConstant: 300),
            actionButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
