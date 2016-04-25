//
//  User.swift
//  Autolayout
//
//  Created by Alex Perucchini on 4/14/16.
//  Copyright © 2016 Ali3nlabs. All rights reserved.
//

import Foundation

struct User {
    
    let name: String
    let company: String
    let login: String
    let password: String!
    
    static func login(login: String, password: String) -> User? {
        if let user = database[login] {
            if user.password == password {
                return user
            }
        }
        return nil
    }
    
    static let database: Dictionary<String, User> = {
        var theDatabase = Dictionary<String, User> ()
        
        for user in [
            User(name: "Alex Perucchini", company: "Ali3nlabs", login: "alexp", password: "test"),
            User(name: "Johnny Applessed", company: "Apple", login: "japple", password: "test")
            ] {
                theDatabase[user.login] = user
                
        }
        return theDatabase
    }()
    
}