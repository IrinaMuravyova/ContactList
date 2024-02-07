//
//  PersonDetailsViewController.swift
//  ContactList
//
//  Created by Irina Muravyeva on 07.02.2024.
//

import UIKit

class PersonDetailsViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.fullName
        phoneLabel.text = "phone: \(person.phone)"
        emailLabel.text = "email: \(person.email)"
    }

}
