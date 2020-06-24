//
//  PokemonRow.swift
//  PokeDex
//
//  Created by Andi Wijaya on 24/06/20.
//  Copyright © 2020 Andi Wijaya. All rights reserved.
//

import SwiftUI

struct PokemonRow: View {
    
    var pokemon: Pokemon
    
    var body: some View {
        
        HStack {
            VStack(alignment: .leading) {
                Text(self.pokemon.name)
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.black)
                Text(self.pokemon.type)
                    .font(.subheadline)
                    .foregroundColor(Color(hexStringToUIColor(hex: self.pokemon.typeColor)))
                }
            .padding(.leading, 50)
            Spacer()
            Image(self.pokemon.imageName)
                .resizable()
                .frame(width: 120, height: 120)
                .shadow(color: .gray, radius: 5, x: 2, y: 2)
                .offset(x:20, y: 20)
                .padding(.top, -20)
        }.background(
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(Color.white)
                .shadow(color: .gray, radius: 5, x: 2, y: 2)
        )
        
    }
}

struct PokemonRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            
            PokemonRow(pokemon: pokemonData[0])
            PokemonRow(pokemon: pokemonData[1])
            
        }.previewLayout(.fixed(width: 500, height: 200))
    }
}
