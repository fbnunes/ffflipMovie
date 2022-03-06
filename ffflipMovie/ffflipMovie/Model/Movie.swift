//
//  Movie.swift
//  ffflipMovie
//
//  Created by Filipe Nunes on 05/03/22.
//

import UIKit

struct Movie: Codable {
    let posterPath: String?
    let adult: Bool?
    let overview: String?
    let releaseDate: String?
    let genreIDs: String?
    let id: Int?
    let originalTitle: String?
    let originalLanguage: String?
    let title: String?
    let backdropPath: String?
    let popularity: Float?
    let voteCount: Float?
    let video: Bool?
    let voteAverage: Float?
}

struct MovieModel: Codable {
    let results: [Movie]
    let id: Int?
    let page: Int?
    let totalPages: Int?
    let totalResults: Int?
}


