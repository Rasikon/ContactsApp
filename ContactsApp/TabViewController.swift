//
//  TabViewController.swift
//  ContactsApp
//
//  Created by Rasikon on 10.09.2020.
//  Copyright © 2020 Rasikon. All rights reserved.
//

import UIKit

class TabViewController: UITabBarController {
    
    let persons = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let firstViewController = viewControllers?[0] as? ContactsTableViewController
            else { return }
        guard let secondViewControlle = viewControllers?[1] as? SectionTableViewController
            else { return }
        firstViewController.persons = persons
        secondViewControlle.persons = persons
    }
}
