//
//  ContentView.swift
//  M2C13_recipe_app
//
//  Created by Tarjani Shukla on 9/8/21.
//

import SwiftUI

struct RecipeListView: View {
    @ObservedObject var recipes = recipeModel()
    
    var body: some View {
        

        NavigationView {
            
            List(recipes.recipeList){ r in
                NavigationLink(
                    destination: RecipeDetailView(recipeDetail: r),
                    label: {
                        HStack {
                            Image(r.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 75.0, height: 75.0)
                                .clipped()
                                .cornerRadius(5.0)
                            Text(r.name)
                        }
                    })


            }
            .navigationBarTitle("All Recipes")
        } // NavigationView ends

        
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
