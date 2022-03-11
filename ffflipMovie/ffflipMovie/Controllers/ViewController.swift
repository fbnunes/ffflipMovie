//
//  ViewController.swift
//  ffflipMovie
//
//  Created by Filipe Nunes on 05/03/22.
//

import UIKit

class ViewController: UIViewController {

    let networkManager = MovieNetworkManager()
    @IBOutlet weak var testLabel: UILabel!
    @IBOutlet weak var testLabel2: UILabel!
    @IBOutlet weak var testLabel3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let movie = "avatar" ?? ""
        
//        networkManager.fetchMovieData(movie: movie) { (movieData) in
//            DispatchQueue.main.async { [weak self] in
//                self?.testLabel.text = movieData.title ?? ""
//            }
//        }
        
        networkManager.fetchListMovieData(movie: movie) { (movieData) in
            DispatchQueue.main.async { [weak self] in
                self?.testLabel.text = movieData.results[movieData.totalPages ?? 0].title ?? ""
                self?.testLabel2.text = movieData.results[movieData.totalPages ?? 0].originalLanguage ?? ""
                self?.testLabel3.text = movieData.results[movieData.totalPages ?? 0].overview ?? ""
            }
        }
        
    }


}

