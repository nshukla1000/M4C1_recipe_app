//
//  RecipeDetailView.swift
//  M2C13_recipe_app
//
//  Created by Tarjani Shukla on 9/9/21.
//

import SwiftUI

struct RecipeDetailView: View {
    var recipeDetail : recipe
    var body: some View {
        ScrollView{
            VStack(alignment: .leading) {
            //MARK: Image
            Image(recipeDetail.image)
                .resizable()
                .scaledToFill()
            
            //MARK: Ingredients
            VStack(alignment: .leading) {
                Text("Ingredients:")
                    .font(.headline)
                    .padding(.vertical, 5.0)
                ForEach (recipeDetail.ingredients, id: \.self) { i in
                    Text("* " + i)
                }
            }
            .padding(.horizontal)
            
            //MARK: Directions
                Divider()
            VStack(alignment: .leading) {
                Text("Directions:")
                    .font(.headline)
                    .padding(.vertical, 5.0)
                    
                ForEach (0...recipeDetail.directions.count-1, id: \.self) { idx in
                    Text(String(idx + 1) + ". " + recipeDetail.directions[idx])
                        .padding(.bottom, 3.0)
                        .fixedSize(horizontal: false, vertical: true)
                        
                }
            }
            .padding(.horizontal) // Directions VSTACK
            }
            
        } //Scrollview
        
        
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = recipeModel().recipeList
        RecipeDetailView(recipeDetail: model[0])
    }
}
