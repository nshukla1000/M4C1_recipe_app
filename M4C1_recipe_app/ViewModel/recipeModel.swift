//
//  recipeModel.swift
//  M2C13_recipe_app
//
//  Created by Tarjani Shukla on 9/8/21.
//

import Foundation

class recipeModel : ObservableObject {
    
    @Published var recipeList = [recipe]()
    
    init() {
        // code to fetch from json
        
//        let service = DataService()
//        self.recipeList = service.getLocalData()

        self.recipeList = DataService.getLocalData()
    }
    
}
