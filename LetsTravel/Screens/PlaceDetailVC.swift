//
//  PlaceDetailVC.swift
//  LetsTravel
//
//  Created by Zygimantas Domeikis on 20/04/2026.
//

import UIKit

class PlaceDetailVC: UIViewController {
    
    let place: Place
    
    let stackView = UIStackView()
    let scrollView = UIScrollView()
    let contentView = UIView()
    
    let imageView = UIImageView()
    let placeTitleLabel = LTTitleLabel(textAlignment: .left, fontSize: 24)
    let placeDescriptionLabel = LTBodyLabel(textAlignment: .left, fontSize: 16)
    
    init(place: Place) {
        self.place = place
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUIElements()
        configure()
    }
    
    func configureUIElements() {
        placeTitleLabel.text = place.name
        placeDescriptionLabel.text = place.description
        imageView.image = UIImage(named: place.image)
    }
    
    func configure() {
        view.addSubview(placeTitleLabel)
        view.addSubview(placeDescriptionLabel)
        
        NSLayoutConstraint.activate([
            placeTitleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            placeTitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            placeTitleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            placeDescriptionLabel.topAnchor.constraint(equalTo: placeTitleLabel.bottomAnchor, constant: 50),
            placeDescriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            placeDescriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
}
