//
//  OwnerViewController.swift
//  ReadyToRent
//
//  Created by hhh on 2019-07-17.
//  Copyright © 2019 hhh. All rights reserved.
//

import UIKit

class OwnerViewController: UIViewController {
    var property : Property?
    var propertySelected : Property?
    var ownerId : Int = 0
    var selectedIndex : Int?
    var owner : Owner?
    @IBOutlet weak var lblFullName: UILabel!
    @IBOutlet weak var lblOwnerId: UILabel!
    @IBOutlet weak var tableShowProperties: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadOwner()
        lblFullName.text = "Name: \(owner!.fullName)"
        lblOwnerId.text = "Owner Id: \(owner!.ownerId!)"
        self.tableShowProperties.delegate = self
        self.tableShowProperties.dataSource = self
    }
    
    func loadOwner() {
        for i in Objects.staticOwners
        {
            if(i.ownerId == ownerId)
            {
                owner = i
            }
        }
    }
    @IBAction func unwindFromPropertyDetailsScreen(_ sender: UIStoryboardSegue) {
        _ = sender.source as! PropertyDetailsViewController
    }
}

extension OwnerViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (owner?.propertyOwned!.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        property = (owner?.propertyOwned![indexPath.row])!
        let cell = tableView.dequeueReusableCell(withIdentifier: "OwnerPropertyIdentifier", for: indexPath) as! PropertyTableViewCell
        print("index path row : -- ",indexPath.row)
        cell.setLable(property: property!)
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        propertySelected = (owner?.propertyOwned![indexPath.row])!
        performSegue(withIdentifier: "ShowViewController", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PropertyDetailsViewController{
            destination.property = propertySelected
        }
    }
    
}
