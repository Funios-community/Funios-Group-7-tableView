//
//  Person.swift
//  Funios Group 7 TableView
//
//  Created by PT.Koanba on 29/07/22.
//

import UIKit

struct Person {
    let photo: UIImage
    let name: String
}

class Person2 {
    let avatar: UIImage?
    let name: String
    let contact: String
    var favorite: Bool
    
    func favoriteButtonImage() -> UIImage {
        UIImage(systemName: favorite ? "star.fill" : "star")!
    }
    
    init(avatar: UIImage?, name: String, contact: String, favorite: Bool) {
        self.avatar = avatar
        self.name = name
        self.contact = contact
        self.favorite = favorite
    }
}

func getDummyData() -> [Person2] {
    [
        Person2(avatar: UIImage(named: "imagePerson1")!, name: "Name1", contact: "name1@gmail.com", favorite: true),
        Person2(avatar: UIImage(named: "imagePerson2")!, name: "Name2", contact: "name2@gmail.com", favorite: false),
        Person2(avatar: UIImage(named: "imagePerson3")!, name: "Name3", contact: "name3@gmail.com", favorite: true),
        Person2(avatar: UIImage(named: "imagePerson4")!, name: "Name4", contact: "name4@gmail.com", favorite: false),
        Person2(avatar: UIImage(named: "imagePerson5")!, name: "Name5", contact: "name5@gmail.com", favorite: false),
    ]
}


