//
//  SetupProfileViewController.swift
//  McDonalds
//
//  Created by Дарья on 15.11.2020.
//

import UIKit

class SetupProfileViewController: UIViewController {
    
    var nameLabel = UILabel(text: "Имя", font: .kohinoor20())
    var secondNameLabel = UILabel(text: "Фамилия", font: .kohinoor20())
    var dateLabel = UILabel(text: "Дата рождения", font: .kohinoor20())
    var phoneLabel = UILabel(text: "Номер телефона", font: .kohinoor20())
    var mailLabel = UILabel(text: "Почта", font: .kohinoor20())
    var adressLabel = UILabel(text: "Адрес доставки", font: .kohinoor20())
    
    var nameTF = OneLineTextField(lineColor: .darkRedColor())
    var secondNameTF = OneLineTextField(lineColor: .darkRedColor())
    var dateTF = OneLineTextField(lineColor: .darkRedColor()) // замена на календарь
    var phoneTF = OneLineTextField(lineColor: .darkRedColor()) // маска ввода
    var mailTF = OneLineTextField(lineColor: .darkRedColor()) // проверку
    var adressTF = OneLineTextField(lineColor: .darkRedColor()) // карта
    
    var saveButton = UIButton(title: "Сохранить", font: .kohinoor16(), bgColor: .lightRedColor(), titleColor: .yellowColor(), cornerRadius: 18, isShadow: true)

    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .yellowColor()
        setupConstraints()
    }
    
    
    private func setupConstraints(){
        
        let nameStack = UIStackView(arrangedSubviews: [nameLabel, nameTF], axis: .vertical, spacing: 0)
        let secondNameStack = UIStackView(arrangedSubviews: [secondNameLabel, secondNameTF], axis: .vertical, spacing: 0)
        let dateStack = UIStackView(arrangedSubviews: [dateLabel, dateTF], axis: .vertical, spacing: 0)
        let phoneStack = UIStackView(arrangedSubviews: [phoneLabel, phoneTF], axis: .vertical, spacing: 0)
        let mailStack = UIStackView(arrangedSubviews: [mailLabel, mailTF], axis: .vertical, spacing: 0)
        let adressStack = UIStackView(arrangedSubviews: [adressLabel, adressTF], axis: .vertical, spacing: 0)
        
        nameStack.translatesAutoresizingMaskIntoConstraints = false
        secondNameStack.translatesAutoresizingMaskIntoConstraints = false
        dateStack.translatesAutoresizingMaskIntoConstraints = false
        phoneStack.translatesAutoresizingMaskIntoConstraints = false
        mailStack.translatesAutoresizingMaskIntoConstraints = false
        adressStack.translatesAutoresizingMaskIntoConstraints = false
        saveButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(nameStack)
        view.addSubview(secondNameStack)
        view.addSubview(dateStack)
        view.addSubview(phoneStack)
        view.addSubview(mailStack)
        view.addSubview(adressStack)
        view.addSubview(saveButton)
        
        NSLayoutConstraint.activate([
           
        ])

    }

}
