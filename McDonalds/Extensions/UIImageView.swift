//
//  UIImageView.swift
//  McDonalds
//
//  Created by Дарья on 15.11.2020.
//

import UIKit

extension UIImageView {
    
    convenience init (image: UIImage, mode: UIView.ContentMode) {
        self.init()
        
        self.image = image
        self.contentMode = mode
    }
}
