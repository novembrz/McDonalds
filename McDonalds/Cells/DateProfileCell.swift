//
//  DateProfileCell.swift
//  McDonalds
//
//  Created by Дарья on 23.11.2020.
//

import UIKit

class DateProfileCell: UITableViewCell {
    
    static var reuseId = "DateProfileCell"
    
    var label: UILabel = {
        let label = UILabel()
        label.font = UIFont.kohinoor16()
        return label
    }()
    var datePicker: UIDatePicker = {
        let date = UIDatePicker()
        return date
    }()

    func configure(text: String){
        self.label.text = text
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        addSubview(label)
        addSubview(datePicker)
        
        label.frame = CGRect(x: 5, y: 5, width: contentView.frame.size.width - 150, height: 100)
        datePicker.frame = CGRect(x: 5, y: 5, width: contentView.frame.size.width - 150, height: 100)
    }
    
//    private func setupConstraints(){
//        
//        label.translatesAutoresizingMaskIntoConstraints = false
//        datePicker.translatesAutoresizingMaskIntoConstraints = false
//        
//        addSubview(label)
//        addSubview(datePicker)
//        
//        NSLayoutConstraint.activate([
//            label.topAnchor.constraint(equalTo: self.topAnchor, constant: 5),
//            label.leadingAnchor.constraint(equalTo: self.trailingAnchor, constant: 20),
//            label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: -20)
//        ])
//        
//        NSLayoutConstraint.activate([
//            datePicker.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 5),
//            datePicker.leadingAnchor.constraint(equalTo: self.trailingAnchor, constant: 20),
//            datePicker.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: -20),
////            textField.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5)
//        ])
//    }
    

}

