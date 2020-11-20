//
//  OneLineTextField.swift
//  McDonalds
//
//  Created by Дарья on 15.11.2020.
//

import UIKit

class OneLineTextField: UITextField {
    
    convenience init(phText: String = "", font: UIFont? = .kohinoor16(), lineColor: UIColor) {
        self.init()
        
        placeholder = phText
        self.font = font
        tintColor = lineColor
        textColor = lineColor
        
        self.borderStyle = .none
        self.translatesAutoresizingMaskIntoConstraints = false
        
        var bottomView = UIView()
        bottomView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 0, height: 0))
        bottomView.backgroundColor = lineColor
        bottomView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(bottomView)
        
        
        NSLayoutConstraint.activate([
            bottomView.bottomAnchor.constraint(equalTo: bottomAnchor),
            bottomView.trailingAnchor.constraint(lessThanOrEqualTo: trailingAnchor),
            bottomView.leadingAnchor.constraint(equalTo: leadingAnchor),
            bottomView.heightAnchor.constraint(equalToConstant: 1.5)
        ])
    }
}
