//
//  AuthViewController.swift
//  McDonalds
//
//  Created by Дарья on 15.11.2020.
//

import UIKit

class AuthViewController: UIViewController {
    
    var segmentedControl = CustomSegmentedControl()
    
    var logoImageView = UIImageView(image: #imageLiteral(resourceName: "ЛогоЖелт"), mode: .scaleAspectFit)
    
    var emailTextField = OneLineTextField(phText: "Почта", lineColor: .yellowColor())
    var passwordTextField = OneLineTextField(phText: "Пароль", lineColor: .yellowColor())
    var confirmPassTextField = OneLineTextField(phText: "Повторите пароль", lineColor: .yellowColor())
    
    var nextButton = UIButton(title: "Войти", font: .kohinoor16(), bgColor: .yellowColor(), titleColor: .darkRedColor(), cornerRadius: 20, isShadow: true)
    var googleButton = UIButton(imageName: "google2", bgColor: .yellowColor(), cornerRadius: 22, isShadow: true)
    var fbButton = UIButton(imageName: "facebook2", bgColor: .yellowColor(), cornerRadius: 22, isShadow: true)

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passwordTextField.smartDashesType = .yes
        confirmPassTextField.isHidden = true
        
        view.backgroundColor = .darkRedColor()
        
        segmentedControl.addTarget(self, action: #selector(segmentedAction), for: .valueChanged)
        segmentedAction()
        setupConstraints()
    }
    
    @objc private func segmentedAction(){
        
        switch segmentedControl.selectedIndex {
        case 0:
            UIView.animate(withDuration: 0.4) {
                self.confirmPassTextField.isHidden = true
                self.nextButton.setTitle("Войти", for: .normal)
            }
        case 1:
            UIView.animate(withDuration: 0.4) {
                self.confirmPassTextField.isHidden = false
                self.nextButton.setTitle("Создать профиль", for: .normal)
            }
        default: print("ERROR! segmentedControl")
        }
    }
}


//MARK: Setup Constraints
extension AuthViewController {
    
    private func setupConstraints(){
        
        let textFieldStackView = UIStackView(arrangedSubviews: [emailTextField, passwordTextField, confirmPassTextField], axis: .vertical, spacing: 35)
        let buttonStackView = UIStackView(arrangedSubviews: [googleButton, fbButton], axis: .horizontal, spacing: 25)
        
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        textFieldStackView.translatesAutoresizingMaskIntoConstraints = false
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        buttonStackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(logoImageView)
        view.addSubview(segmentedControl)
        view.addSubview(textFieldStackView)
        view.addSubview(nextButton)
        view.addSubview(buttonStackView)
        
        
        buttonStackView.distribution = .fillEqually
        
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            logoImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 120),
            logoImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -120),
            logoImageView.heightAnchor.constraint(equalToConstant: view.frame.width - 240)
        ])
        
        NSLayoutConstraint.activate([
            segmentedControl.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 40),
            segmentedControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            segmentedControl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            segmentedControl.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        NSLayoutConstraint.activate([
            textFieldStackView.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 30),
            textFieldStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            textFieldStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50)
        ])
        
        NSLayoutConstraint.activate([
            nextButton.topAnchor.constraint(equalTo: textFieldStackView.bottomAnchor, constant: 60),
            nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 70),
            nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -70),
            nextButton.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        NSLayoutConstraint.activate([
            buttonStackView.topAnchor.constraint(equalTo: nextButton.bottomAnchor, constant: 21),
            buttonStackView.heightAnchor.constraint(equalToConstant: 45),
            buttonStackView.widthAnchor.constraint(equalToConstant: 115),
            buttonStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}
