//
//  User.swift
//  Appetizers
//
//  Created by Jasman Arora on 4/30/23.
//

import Foundation


struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
