//
//  RecipeFeaturedView.swift
//  M4C1_recipe_app
//
//  Created by Tarjani Shukla on 9/10/21.
//

import SwiftUI

struct RecipeFeaturedView: View {
    @EnvironmentObject var recipes : recipeModel
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("Featured Recipes")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.leading)
            GeometryReader{ geo in
                TabView {
                    ForEach(recipes.recipeList) { r in
                        if r.featured {
                            ZStack {
                                Rectangle()
                                    .foregroundColor(.white)
                                VStack {
                                    Image(r.image)
                                        .resizable()
                                        .clipped()
                                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                    Text(r.name)
                                }
                            }
                            .frame(width: geo.size.width - 40, height: geo.size.height-100)
                            .cornerRadius(15)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        }
                    }
                   
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            }
            VStack(alignment: .leading, spacing: 10.0) {
                Text("Preperation time:")
                    .font(.headline)
                Text("1 hour")
                Text("Highlights:")
                    .font(.headline)
                Text("Hearty, Health")
            }
            .padding(.leading)

        }
        
    }
}

struct RecipeFeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeFeaturedView()
            .environmentObject(recipeModel())
    }
}
