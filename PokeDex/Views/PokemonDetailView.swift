//
//  PokemonDetailView.swift
//  PokeDex
//
//  Created by Andi Wijaya on 24/06/20.
//  Copyright © 2020 Andi Wijaya. All rights reserved.
//

import SwiftUI

struct PokemonDetailView: View {
    var pokemon: Pokemon
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            ZStack {
                Color(hexStringToUIColor(hex: pokemon.mainColor))
                VStack {
                    PokemonImageView(imageName: pokemon.imageName, secondColor: pokemon.secondColor)
                    
                    Text(pokemon.name)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .padding(.top, 32)
                    
                    HStack {
                        VStack {
                            Text("Weight")
                                .fontWeight(.bold)
                            Text(String("\(pokemon.weight) lbs"))
                                .font(.title)
                        }.padding(.trailing, 40)
                        VStack {
                            Text("Height")
                                .fontWeight(.bold)
                            Text(String(pokemon.height))
                                .font(.title)
                        }.padding(.leading, 40)
                    }
                    
                    Text(pokemon.type)
                        .font(.headline)
                        .foregroundColor(Color.white)
                        .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
                        .background(
                            RoundedRectangle(cornerRadius: 8, style: .continuous)
                                .fill(Color(hexStringToUIColor(hex: pokemon.typeColor)))
                                .shadow(color: .gray, radius: 5, x: 2, y: 2)
                    )
                        .padding(.top, 12)
                    
                    Text(pokemon.description)
                        .font(.body)
                        .multilineTextAlignment(.leading)
                        .padding(EdgeInsets(top: 12, leading: 8, bottom: 8, trailing: 8))
                    
                    Spacer()
                }
            }
        }.background(Color(hexStringToUIColor(hex: pokemon.mainColor))).edgesIgnoringSafeArea(.all)
        
    }
}

struct PokemonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDetailView(pokemon: pokemonData[0])
    }
}
