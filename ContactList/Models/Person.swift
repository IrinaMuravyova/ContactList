//
//  Person.swift
//  ContactList
//
//  Created by Irina Muravyeva on 07.02.2024.
//

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    init(name: String, surname: String, phone: String, email: String) {
        self.name = name
        self.surname = surname
        self.phone = phone
        self.email = email
    }
    
    static func getPersonsList() -> [Person] {
        //передаю массивы из DataStore для дальнейшей работы
        let data = DataStore.shared
        //сразу перемешиваю данные, чтобы каждый раз формировались разные наборы
        let names = data.names.shuffled()
        let surname = data.surnames.shuffled()
        let phones = data.phones.shuffled()
        let emails = data.emails.shuffled()
        
        //определяю сколько строк с контактами у меня будет
        let countOfPerson = min(names.count,
                                surname.count,
                                phones.count,
                                emails.count)
        
        var persons: [Person] = []
        
        
        for index in 0 ..< countOfPerson {
            // не использую randomElement() чтобы не повторялись значения
            let person: Person = Person(name: names[index],
                                        surname: surname[index],
                                        phone: phones[index],
                                        email: emails[index])
            
            persons.append(person)
        }
      
        return persons
    }

}

// системные изображения для телефона и емэйла
enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}


