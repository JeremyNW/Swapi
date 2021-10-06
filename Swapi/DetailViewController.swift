//
//  ViewController.swift
//  Swapi
//
//  Created by Jeremy Warren on 10/6/21.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var massLabel: UILabel!
    @IBOutlet weak var hairColorLabel: UILabel!
    @IBOutlet weak var skinColorLabel: UILabel!
    @IBOutlet weak var birthYearLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    
    var person: Person?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = person?.name
        heightLabel.text = person?.height
        massLabel.text = person?.mass
        hairColorLabel.text = person?.hair_color
        skinColorLabel.text = person?.skin_color
        birthYearLabel.text = person?.birth_year
        genderLabel.text = person?.gender 
    }


}

