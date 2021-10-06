//
//  TableViewController.swift
//  Swapi
//
//  Created by Jeremy Warren on 10/6/21.
//

import UIKit

class TableViewController: UITableViewController {

    var people: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PeopleManager.fetchPeople { people in
            DispatchQueue.main.async {
                self.people = people
                self.tableView.reloadData()
            }
            
        }
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         people.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "peopleCell", for: indexPath)
        
        
        cell.textLabel?.text = people[indexPath.row].name

        return cell
    }
    

  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        guard let indexPath = tableView.indexPathForSelectedRow,
              let destination = segue.destination as? DetailViewController else { return }
        
        let person = people[indexPath.row]
        
        destination.person = person
        
    }
    

}
