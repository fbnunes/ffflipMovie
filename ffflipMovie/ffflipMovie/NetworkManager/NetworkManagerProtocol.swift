//
//  NetworkManagerProtocol.swift
//  ffflipMovie
//
//  Created by Filipe Nunes on 05/03/22.
//

import UIKit

protocol NetworkManagerProtocol {
    func fetchMovieData(movie: String, completion: @escaping (Movie) -> ())
    func fetchListMovieData(movie: String, completion: @escaping (MovieModel) -> ())
}

