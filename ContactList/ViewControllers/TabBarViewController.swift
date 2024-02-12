//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Irina Muravyeva on 12.02.2024.
//

import UIKit

class TabBarViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        guard let contactListVC = viewControllers?.first as? PersonsListViewController else {return}
        guard let sectionVC = viewControllers?.last as? SectionTableViewController else {return}
        
        //создаем массив с контактами и передаем его в наши вьюконтроллеры
        let persons = Person.getPersonsList()
        contactListVC.persons = persons
        sectionVC.persons = persons
    }
}
