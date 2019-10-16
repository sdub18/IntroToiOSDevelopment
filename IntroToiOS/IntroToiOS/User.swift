//
//  User.swift
//  IntroToiOS
//
//  Created by Sam DuBois on 10/16/19.
//  Copyright © 2019 SamDuBois. All rights reserved.
//

import Foundation

struct User {
    
    let username: String
    let password: String
    let name: String
    let major: String
    let year: String
    
}

let users: [User] = [

    User(username: "sdubois18", password: "password", name: "Sam DuBois", major: "Computer Science", year: "Sophomore")

]
