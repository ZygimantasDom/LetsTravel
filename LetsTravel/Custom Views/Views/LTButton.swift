//
//  LTButton.swift
//  LetsTravel
//
//  Created by Zygimantas Domeikis on 18/04/2026.
//

import UIKit

class LTButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        
        layer.borderWidth = 1
        layer.borderColor = UIColor.black.cgColor
        layer.cornerRadius = 8
        
        backgroundColor = .systemMint
        
    }
}
