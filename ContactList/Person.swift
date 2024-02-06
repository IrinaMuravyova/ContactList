//
//  Person.swift
//  ContactList
//
//  Created by Irina Muravyeva on 07.02.2024.
//

struct Person {
    var name: String
    var suranme: String
    var phone: String
    var email: String
    
    var fullName: String {
        "\(name) \(suranme)"
    }
    
    init() {
        name = ""
        suranme = ""
        phone = ""
        email = ""
    }
    
    func addPersonsList(names: [String], surnames: [String], phones: [String], emails: [String]) -> Person {
        
        var person: Person = Person()
        
        person.name = names.randomElement()!
        person.suranme = surnames.randomElement()!
        person.phone = phones.randomElement()!
        person.email = emails.randomElement()!
        
        return person
    }
}
