//
//  ProfileCell.swift
//  McDonalds
//
//  Created by Дарья on 15.11.2020.
//

import UIKit

class StandartProfileCell: UITableViewCell {
    
    static let identifare = "StandartProfileCell"
    
    var label: UILabel!
    var textField: OneLineTextField!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        label.font = .kohinoor18()
        textField.font = .kohinoor18()
        
        backgroundColor = .white
    }
    
    
    private func setupConstraints(){
        
        label.translatesAutoresizingMaskIntoConstraints = false
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(label)
        addSubview(textField)
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: self.topAnchor, constant: 5),
            label.leadingAnchor.constraint(equalTo: self.trailingAnchor, constant: 20),
            label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: -20)
        ])
        
        NSLayoutConstraint.activate([
            textField.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 5),
            textField.leadingAnchor.constraint(equalTo: self.trailingAnchor, constant: 20),
            textField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: -20),
            textField.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
