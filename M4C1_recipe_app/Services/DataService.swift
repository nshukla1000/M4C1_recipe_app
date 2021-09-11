//
//  DataService.swift
//  M2C13_recipe_app
//
//  Created by Tarjani Shukla on 9/8/21.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [recipe]{
        
        //parse local json file
        
        // get url path to json file
        
        // create url object
        
        // create a data object
        
        // decode data object with json decoder
        
        // add UUIDs
        
        // return recipe array
        var recipeList = [recipe]()
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        guard pathString != nil else {
            return recipeList
        }
        
        //if let path = pathString {
            // get URL object
            let url = URL(fileURLWithPath: pathString!)
            // create data object
            // Err handling
            do{
                let data = try Data(contentsOf: url)
                // json decoder
                let decoder = JSONDecoder()
                //  Err handling for decoder error
                do{
                    recipeList = try decoder.decode([recipe].self, from: data)
                    for p in recipeList{
                        p.id = UUID()
                        
                        for i in p.ingredients{
                            i.id = UUID()
                        }
                        
                    }
                    return recipeList
                }
                catch{
                    print(error)
                    print("Decode")
                    
                }

            }
            catch{
                print(error)
            }
        //}
      return recipeList
    }
}
