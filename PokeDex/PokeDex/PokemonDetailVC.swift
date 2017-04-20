//
//  PokemonDetailVC.swift
//  PokeDex
//
//  Created by Amy Roberson on 4/20/17.
//  Copyright © 2017 Amy Roberson. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {

    var pokemon: Pokemon!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = pokemon.name
        // Do any additional setup after loading the view.
    }

}
