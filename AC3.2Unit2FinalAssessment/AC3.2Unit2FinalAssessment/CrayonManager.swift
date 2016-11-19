//
//  CrayonManager.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Miti Shah on 11/18/16.
//  Copyright © 2016 Miti Shah. All rights reserved.
//

import Foundation

class CrayonManager {
    static let manager = CrayonManager()
    var allCrayons = [Crayon]()
    
    private init() { }
    
    
    func populateCrayons(CrayonData: [[String:Any]]) {
        for c in crayolaColors {
            if let crayon = Crayon(fromDict: c) {
                allCrayons.append(crayon)
            }
        }
    }
        
}
        
        
        
        
        
        
        
        
        //        for movie in movies {
//            if let name = movie["name"] as? String,
//                let year = movie["year"] as? Int,
//                let genre = movie["genre"] as? String,
//                let cast = movie["cast"] as? [String],
//                let description = movie["description"] as? String {
//                
//                allMovies.append(Movie(name: name, year: year, genre: genre, cast: cast, description: description))


