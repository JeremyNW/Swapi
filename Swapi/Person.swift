//
//  People.swift
//  Swapi
//
//  Created by Jeremy Warren on 10/6/21.
//

import Foundation

struct ApiResponse: Codable {
    let results: [Person]
}

struct Person: Codable {
    let name: String
    let height: String
    let mass: String
    let hair_color: String
    let skin_color: String
    let birth_year: String
    let gender: String
}
