//
//  Contact.swift
//  Taskapps
//
//  Created by Estudiantes on 6/2/16.
//  Copyright © 2016 Javeriana Cali. All rights reserved.
//
import Gloss

/*
struct Contact: Decodable {
    
    var userId: Int
    var userName: String
    var nombre: String
    
    init(userId: Int, userName: String, nombre:String) {
        self.userId = userId
        self.userName = userName
        self.nombre=nombre
    }
    
    init?(json: JSON) {
        guard let userId: Int = "userId" <~~ json,
            let userName: String = "userName" <~~ json,
            let nombre: String = "nombre" else { return nil }
        
        self.userId = userId
        self.userName = userName
        self.nombre = nombre
    }
    
}

extension Contact: Equatable { }

func ==(lhs: Contact, rhs: Contact) -> Bool {
    return lhs.userId == rhs.userId && lhs.userName == rhs.userName && lhs.nombre == rhs.nombre
}
*/

struct Person: Decodable {
    
    var id: Int
    var name: String
    
    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
    
    init?(json: JSON) {
        guard let id: Int = "id" <~~ json,
            let name: String = "name" <~~ json else { return nil }
        
        self.id = id
        self.name = name
    }
    
}

extension Person: Equatable { }

func ==(lhs: Person, rhs: Person) -> Bool {
    return lhs.id == rhs.id && lhs.name == rhs.name
}