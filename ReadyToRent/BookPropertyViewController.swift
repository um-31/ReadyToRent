//
//  BookPropertyViewController.swift
//  ReadyToRent
//
//  Created by hhh on 2019-07-19.
//  Copyright © 2019 hhh. All rights reserved.
//

import UIKit

class BookPropertyViewController: UIViewController {

    var userId: Int = 0
    var user: User?
    var allUsers : [User] = []
    var properties : [Property] = []
    var availableProperties: [Property] = []
    var bookedProperties: [Property] = []
    var currentProperty: Property?
    @IBOutlet weak var tblAvailableProperties: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        Objects.loadStaticProperties()
        properties = Objects.staticProperties
        Objects.loadStaticUsers()
        allUsers = Objects.staticUsers
        self.error()
        loadUser()
        self.tblAvailableProperties.delegate = self
        self.tblAvailableProperties.dataSource = self
        

    }
    func loadUser() {
        for i in Objects.staticUsers
        {
            if(i.userId == userId)
            {
                user = i
            }
        }
    }
    func error() {
        let alert = UIAlertController(title: "Error", message: "Invalid Username or Password", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true)
    }
    

}
extension BookPropertyViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        for i in properties {
            for j in allUsers {
            print("--------",properties[0].propertyId!)
                if i.propertyId == j.propertyBooked?.propertyId {
                    bookedProperties.append(i)
                }
            }
        }
        print("============",availableProperties.count)
        return availableProperties.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        currentProperty = availableProperties[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookPropertyIdentifier", for: indexPath) as! BookPropertyTableViewCell
        cell.setLable(property: currentProperty!)
        return cell
        
    }
    
    
}
