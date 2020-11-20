//
//  UISegmentedControll.swift
//  McDonalds
//
//  Created by Дарья on 16.11.2020.
//

import UIKit

extension UISegmentedControl {
    
    convenience init(first: String, second: String) {
        self.init()
        
        insertSegment(withTitle: first, at: 0, animated: true)
        insertSegment(withTitle: second, at: 1, animated: true)
        
        selectedSegmentIndex = 0
        layer.cornerRadius = 100
        
        backgroundColor = .darkRedColor()
        selectedSegmentTintColor = .yellowColor()
    }
}
