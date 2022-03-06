//
//  MovieNetworkManager.swift
//  ffflipMovie
//
//  Created by Filipe Nunes on 05/03/22.
//

import Foundation

import UIKit

class MovieNetworkManager : NetworkManagerProtocol {
    
    func fetchMovieData(movie: String, completion: @escaping (Movie) -> ()) {
        let API_URL = "https://api.themoviedb.org/3/movie/550?api_key=\(NetworkProperties.API_KEY)"
        
        guard let url = URL(string: API_URL) else {
                 fatalError()
             }
             let urlRequest = URLRequest(url: url)
             URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
                 guard let data = data else { return }
                 do {
                     let currentMovie = try JSONDecoder().decode(Movie.self, from: data)
                    completion(currentMovie)
                     
                 } catch {
                     print(error)
                 }
                     
        }.resume()
    }
    
    func fetchListMovieData(movie: String, completion: @escaping (MovieModel) -> ()) {
        let API_URL = "https://api.themoviedb.org/3/search/movie?api_key=\(NetworkProperties.API_KEY)&query=\(movie)"

        guard let url = URL(string: API_URL) else {
                 fatalError()
             }
             let urlRequest = URLRequest(url: url)
             URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
                 guard let data = data else { return }
                 do {
                     let currentMovie = try JSONDecoder().decode(MovieModel.self, from: data)
                    completion(currentMovie)
                     
                 } catch {
                     print(error)
                 }
                     
        }.resume()
    }
    
}
