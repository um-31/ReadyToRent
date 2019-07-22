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
    var propertySelected : Property?
    @IBOutlet weak var tblAvailableProperties: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        properties = Objects.staticProperties
        allUsers = Objects.staticUsers
        self.error()
        print(allUsers.count)
        print(properties.count)
        loadUser()
        bookingProperties()
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
    func bookingProperties() {
        for i in properties {
            for j in allUsers {
                if i.propertyId == j.propertyBooked?.propertyId {
                    properties.remove(at: 0)
                    print(i.propertyId!)
                }
            }
        }
    }
    

}
extension BookPropertyViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return properties.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        currentProperty = properties[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookPropertyIdentifier", for: indexPath) as! BookPropertyTableViewCell
        cell.setLable(property: currentProperty!)
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        propertySelected = (user?.propertyBooked!)
        performSegue(withIdentifier: "BookPropertyIdentifier", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PropertyBookingViewController{
            destination.property = propertySelected
        }
    }
    
}
