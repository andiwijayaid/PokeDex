//
//  PokemonImageView.swift
//  PokeDex
//
//  Created by Andi Wijaya on 24/06/20.
//  Copyright © 2020 Andi Wijaya. All rights reserved.
//

import SwiftUI

struct PokemonImageView: View {
    var imageName: String
    var secondColor: String
    
    var body: some View {
        ZStack {
            
            Circle()
                .fill(Color(hexStringToUIColor(hex: secondColor)))
                .frame(width: 350, height: 350)
            
            Image(imageName)
                .resizable()
                .frame(width: 300, height: 300)
                .offset(y: 75)
                .shadow(color: .gray, radius: 5, x: 2, y: 2)
            
        }
    }
}

struct PokemonImageView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonImageView(imageName: pokemonData[0].imageName, secondColor: pokemonData[0].secondColor)
    }
}
