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
    var highlights : [String]
    var ingredients : [ingredients] //= [String]()
    var directions : [String] //= [String]()
}

class ingredients : Identifiable, Decodable {
    var id : UUID?
    var name : String
    var num : Int?
    var denom : Int?
    var unit : String?
}
