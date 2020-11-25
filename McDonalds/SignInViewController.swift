//
//  SignInViewController.swift
//  McDonalds
//
//  Created by Дарья on 25.11.2020.
//

import UIKit
import Firebase
import FirebaseAuth

class SignInViewController: UIViewController {

    var firstNameTextField = OneLineTextField(phText: "Имя", lineColor: .yellowColor())
    var lastNameTextField = OneLineTextField(phText: "Фамилия", lineColor: .yellowColor())
    var nextButton = UIButton(title: "Сохранить", font: .kohinoor16(), bgColor: .yellowColor(), titleColor: .white, cornerRadius: 20, isShadow: true)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        nextButton.addTarget(self, action: #selector(buttonsWork), for: .touchUpInside)
        setupConstraints()
    }
    
    
    @objc private func buttonsWork(){
//        if firstNameTextField.text != "" ||
//            firstNameTextField.text != nil ||
//            lastNameTextField.text != "" ||
//            lastNameTextField.text != nil {
//            
//            let db = Firestore.firestore()
//            db.collection("users").addDocument(data: [
//                "firstname": firstNameTextField.text!,
//                "lastname": lastNameTextField.text!,
//                
//            ], completion: <#T##((Error?) -> Void)?##((Error?) -> Void)?##(Error?) -> Void#>)
//        }
    }
    
    
    private func setupConstraints(){
        
        firstNameTextField.translatesAutoresizingMaskIntoConstraints = false
        lastNameTextField.translatesAutoresizingMaskIntoConstraints = false
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(firstNameTextField)
        view.addSubview(lastNameTextField)
        view.addSubview(nextButton)
        
        NSLayoutConstraint.activate([
            firstNameTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 30),
            firstNameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            firstNameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50)
        ])
        
        NSLayoutConstraint.activate([
            lastNameTextField.topAnchor.constraint(equalTo: firstNameTextField.bottomAnchor, constant: 30),
            lastNameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            lastNameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50)
        ])
        
        NSLayoutConstraint.activate([
            nextButton.topAnchor.constraint(equalTo: lastNameTextField.bottomAnchor, constant: 60),
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextButton.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
}
