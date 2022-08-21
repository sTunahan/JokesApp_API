//
//  JsonModel.swift
//  JokesApp-API
//
//  Created by Tunahan on 8/18/22.
//

import Foundation

// MARK: - Welcome
struct Welcome: Identifiable,Codable {
    let id = UUID() 
    let type: String
    let value: [Value]
}

// MARK: - Value
struct Value: Identifiable,Codable {
    let id: Int
    let joke: String
    let categories: [String]
}
