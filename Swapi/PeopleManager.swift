//
//  PeopleManager.swift
//  Swapi
//
//  Created by Jeremy Warren on 10/6/21.
//

import Foundation

class PeopleManager: Codable {
    
    static func fetchPeople(completion: @escaping ([Person]) -> Void){
        guard let url = URL(string: "https://swapi.dev/api/people") else {
            completion([])
            return
        }
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                print(error)
                completion([])
                return
            }
            
            guard let data = data else {
                completion([])
                return
            }
            
            do {
                let decoder = JSONDecoder()
                // What does this line do?
                let results = try decoder.decode(ApiResponse.self, from: data)
                completion(results.results)
                
            } catch {
                print(error)
                completion([])
            }
        }.resume()
    }
}
