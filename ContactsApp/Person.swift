//
//  Person.swift
//  ContactsApp
//
//  Created by Rasikon on 09.09.2020.
//  Copyright © 2020 Rasikon. All rights reserved.
//

struct Person {
    let name: String
    let surname: String
    let mail: String
    let phone: String
}

extension Person {
    static func getPersons() -> [Person] {
        var persons: [Person] = []
        let data = DataManager()
        for _ in 0..<data.names.count {
            persons.append(Person(
                name: data.names.remove(at:Int.random(in: 0..<data.names.count)),
                surname: data.surnames.remove(at: Int.random(in: 0..<data.surnames.count)),
                mail: data.mails.remove(at: Int.random(in: 0..<data.mails.count)),
                phone: data.phones.remove(at: Int.random(in: 0..<data.phones.count))))
        }
        return persons
    }
}


