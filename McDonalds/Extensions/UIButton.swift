//
//  UIButton.swift
//  McDonalds
//
//  Created by Дарья on 15.11.2020.
//

import UIKit

extension UIButton {
    
    convenience init(title: String, font: UIFont , bgColor: UIColor, titleColor: UIColor, cornerRadius: CGFloat, isShadow: Bool) {
        self.init(type: .system)
        
        self.setTitle(title, for: .normal)
        self.setTitleColor(titleColor, for: .normal)
        self.backgroundColor = bgColor
        self.titleLabel?.font = font
        
        self.layer.cornerRadius = cornerRadius
        
        if isShadow{
            self.layer.shadowColor = UIColor.black.cgColor
            self.layer.shadowOpacity = 0.2 // блик
            self.layer.shadowRadius = 4
            self.layer.shadowOffset = CGSize(width: 0, height: 4)
        }
    }
    
    
    convenience init(imageName: String, bgColor: UIColor, cornerRadius: CGFloat, isShadow: Bool) {
        self.init(type: .system)
        
        self.backgroundColor = bgColor
        
        self.layer.cornerRadius = cornerRadius
        
        if isShadow{
            self.layer.shadowColor = UIColor.black.cgColor
            self.layer.shadowOpacity = 0.2
            self.layer.shadowRadius = 4
            self.layer.shadowOffset = CGSize(width: 0, height: 4)
        }
        
        guard let image = UIImage(named: imageName) else {return}
        let imageView = UIImageView(image: image, mode: .scaleAspectFit)
        self.addSubview(imageView)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
}


