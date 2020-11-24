//
//  ProfileViewController.swift
//  McDonalds
//
//  Created by Дарья on 23.11.2020.
//

import UIKit

class ProfileViewController: UIViewController {
    
    var tabelView: UITableView = {
        let tableView = UITableView()
        tableView.register(DateProfileCell.self, forCellReuseIdentifier: DateProfileCell.reuseId)
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        view.addSubview(tabelView)
        
        tabelView.delegate = self
        tabelView.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tabelView.frame = view.bounds
    }
    

}

extension ProfileViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DateProfileCell.reuseId) as! DateProfileCell
        cell.configure(text: "dead inside")
        return cell
    }
    
    
}
