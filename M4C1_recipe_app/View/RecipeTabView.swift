//
//  RecipeTabView.swift
//  M4C1_recipe_app
//
//  Created by Tarjani Shukla on 9/10/21.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        
        TabView{
            RecipeFeaturedView()
                .tabItem { VStack{
                    Image(systemName: "star.fill")
                    Text("Featured")
                } }
                .tag(0)
            
            RecipeListView()
                .tabItem { VStack{
                    Image(systemName: "list.bullet")
                    Text("All Recipes")
                } }
                .tag(0)
        
        }
        .environmentObject(recipeModel())
    
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
