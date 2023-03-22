//
//  TopMovies.swift
//  MoviesApp
//
//  Created by Ruba on 22/08/1444 AH.
//

import UIKit

class TopMovies: UICollectionViewCell {
   
    @IBOutlet weak var HighRatedMovies: UIImageView!
    @IBOutlet weak var MovieName: UILabel!
    @IBOutlet weak var Rate: UILabel!
    @IBOutlet weak var Genre: UILabel!


    func setupCell(Photo: UIImage ,name : String, genre : String ,rate : String) {
        HighRatedMovies.image = Photo
        MovieName.text = name
        Rate.text = rate
        Genre.text = genre
        
    }
}


