//
//  ListItemsView.swift
//  Recipe
//
//  Created by Manyuchi, Carrington C on 2024/12/28.
//

import SwiftUI

struct ListItemsView: View {
    
    let name: String
    let caloriesPer100Grams: Int
    let recipeImage: String
    let imageDim: CGFloat = 70
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 5) {
                Text(name)
                    .foregroundStyle(.orange)
                
                Text("\(caloriesPer100Grams) callories per 100 grams")
                    .foregroundStyle(.white)
                    .font(.caption)
                    .fontWeight(.semibold)
            }
    
            .padding()
            Spacer()
            
//            Image(recipeImage)
//                .renderingMode(.original)
//                .resizable()
//                .frame(width: 83, height: 80)
            
            
            Image("IMGhummus")
                .resizable()
                .frame(width: 83, height: 80)
                .clipShape(.rect(cornerRadius: 10))
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 1)
                    )
        }
        .background(.black)
        .clipShape(.rect(cornerRadius: 10))
        .padding()
        
        
        

        

        
    }
}

#Preview {
    ListItemsView(name: "Hummus", caloriesPer100Grams: 322, recipeImage: "IMGhummus")
}
