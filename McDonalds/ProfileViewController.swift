//
//  ProfileViewController.swift
//  McDonalds
//
//  Created by Дарья on 15.11.2020.
//

import UIKit

class ProfileViewController: UITableViewController {
    
    let profileArray = ["Имя", "Фамилия", "Дата рождения", "Пол", "Телефон", "Почта", "Адрес"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.separatorStyle = .none
    }
    

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return profileArray.count
    }

    
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        
//        switch indexPath.row {
//        
//        case 0, 1:
//            let cell = tableView.dequeueReusableCell(withIdentifier: "profileCell", for: indexPath) as! ProfileCell
//            cell.label.text = profileArray[indexPath.row]
//            return cell
//        case 3:
//            let cell = tableView.dequeueReusableCell(withIdentifier: "profileCell", for: indexPath) as! ProfileCell
//            cell.label.text = profileArray[indexPath.row]
//            return cell
//        default:
//            break
//            
//        }
//        
//    }
    

}
