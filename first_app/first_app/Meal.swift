//
//  Meal.swift
//  first_app
//
//  Created by Adrian Rupala on 16.03.2018.
//  Copyright © 2018 Adrian Rupala. All rights reserved.
//

import UIKit

class Meal {
    
    //MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    init?(name:String, photo: UIImage?, rating: Int){
        
        /* if name.isEmpty || rating < 0 {
            return nil
        } */
        
        //The name must not be empty
        guard !name.isEmpty else {
            return nil
        }
        
        //The rating must be between 0 and 5 inclusively
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
        
        self.name = name
        self.photo = photo
        self.rating = rating
        
    }
}
