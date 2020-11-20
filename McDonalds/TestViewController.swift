//
//  TestViewController.swift
//  McDonalds
//
//  Created by Дарья on 20.11.2020.
//

import UIKit

class TestViewController: UIViewController {
    
    var segmentedControl = CustomSegmentedControl()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemPink
        setupConstraints()
        segmentedControl.addTarget(self, action: #selector(segmentedAction(_:)), for: .valueChanged)
    }
    
    @objc private func segmentedAction(_ control: UIControl){
        
        switch segmentedControl.selectedIndex {
        case 0:
            UIView.animate(withDuration: 0.4) {
                self.view.backgroundColor = .systemPink
            }
        case 1:
            UIView.animate(withDuration: 0.4) {
                self.view.backgroundColor = .systemRed
            }
        default: print("ERROR! segmentedControl")
        }
    }
    
    
    func setupConstraints(){
        
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(segmentedControl)
        
        NSLayoutConstraint.activate([
            segmentedControl.topAnchor.constraint(equalTo: view.topAnchor, constant: 30),
            segmentedControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            segmentedControl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            segmentedControl.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
