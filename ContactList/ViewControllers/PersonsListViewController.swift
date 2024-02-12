//
//  PersonsListViewController.swift
//  ContactList
//
//  Created by Irina Muravyeva on 07.02.2024.
//

import UIKit

class PersonsListViewController: UITableViewController {
    var persons: [Person] = []

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        let person = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = person.fullName
        cell.contentConfiguration = content

        return cell
    }
    

     //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailsVC = segue.destination as? PersonDetailsViewController
        if let indexPath = tableView.indexPathForSelectedRow {
            detailsVC?.person = persons[indexPath.row]}
    }


}
