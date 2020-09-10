//
//  ContactsTableViewController.swift
//  ContactsApp
//
//  Created by Rasikon on 09.09.2020.
//  Copyright © 2020 Rasikon. All rights reserved.
//

import UIKit

class ContactsTableViewController: UITableViewController {
    
    var persons: [Person]!
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        let person = persons[indexPath.row]
        cell.textLabel?.text = "\(person.name) \(person.surname)"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? DetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailsVC.person = persons[indexPath.row]
    }
}
