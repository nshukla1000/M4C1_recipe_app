//
//  recipe.swift
//  M2C13_recipe_app
//
//  Created by Tarjani Shukla on 9/8/21.
//

import Foundation

class recipe : Identifiable, Decodable {
    var id : UUID?
    var name : String //= ""
    var featured : Bool //= false
    var image : String //= ""
    var description : String //= ""
    var prepTime : String //= ""
    var cookTime : String //= ""
    var totalTime : String //= ""
    var servings : Int //= 0
    var ingredients : [String] //= [String]()
    var directions : [String] //= [String]()
    
    
    
}
