//
//  SectionTableViewController.swift
//  ContactsApp
//
//  Created by Rasikon on 10.09.2020.
//  Copyright © 2020 Rasikon. All rights reserved.
//

import UIKit

class SectionTableViewController: UITableViewController {
    
    var persons: [Person]!
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        let person = persons[indexPath.section]
        cell.textLabel?.text = person.phone
        cell.detailTextLabel?.text = person.mail
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = persons[section]
        let text = "\(person.name) \(person.surname)"
        return text
    }
}
