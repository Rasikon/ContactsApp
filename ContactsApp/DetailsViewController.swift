//
//  DetailsViewController.swift
//  ContactsApp
//
//  Created by Rasikon on 09.09.2020.
//  Copyright © 2020 Rasikon. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "\(person.name) \(person.surname)"
        phoneLabel.text = person.phone
        emailLabel.text = person.mail
    }
}
