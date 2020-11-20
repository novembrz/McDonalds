//
//  UILabel.swift
//  McDonalds
//
//  Created by Дарья on 15.11.2020.
//

import UIKit

extension UILabel {
    convenience init (text: String, font: UIFont){
        self.init()
        self.text = text
        self.font = font
    }
}
