//
//  LTTextField.swift
//  LetsTravel
//
//  Created by Zygimantas Domeikis on 18/04/2026.
//

import UIKit

class LTTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        
        layer.borderColor = UIColor.lightGray.cgColor
        layer.borderWidth = 1
        layer.cornerRadius = 8
        
        textColor = .label
        tintColor = .label
        textAlignment = .center
        font = UIFont.preferredFont(forTextStyle: .title2)
        
        backgroundColor = .secondarySystemBackground
        autocorrectionType = .no
        returnKeyType = .search
        clearButtonMode = .whileEditing
        placeholder = "Enter city name..."
    }
}
