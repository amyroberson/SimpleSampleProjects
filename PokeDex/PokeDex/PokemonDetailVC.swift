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
    
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var defenseLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var pokedexLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var attackLabel: UILabel!
    @IBOutlet weak var evoImage: UIImageView!
    @IBOutlet weak var nextEvoImage: UIImageView!
    @IBOutlet weak var evoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = pokemon.name.capitalized
        mainImage.image = UIImage(named: "\(pokemon.pokedexId)")
        evoImage.image = UIImage(named: "\(pokemon.pokedexId)")
        pokedexLabel.text = "\(pokemon.pokedexId)"
     
        pokemon.downloadPokemonDetails {
            //this func would only perform after download complete
            self.updateUI()
        }
    }
    
    func updateUI(){
        attackLabel.text = pokemon.attack
        defenseLabel.text = pokemon.defense
        weightLabel.text = pokemon.weight
        heightLabel.text = pokemon.weight
        typeLabel.text = pokemon.type
    }

    @IBAction func backButttonPressed(_ sender: UIButton) {
        dismiss(animated:true, completion: nil)
    }
}
