//
//  ContentView.swift
//  PokeDex
//
//  Created by Andi Wijaya on 24/06/20.
//  Copyright © 2020 Andi Wijaya. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    init() {
        
        //Use this if NavigationBarTitle is with Large Font
        UINavigationBar.appearance().largeTitleTextAttributes = [.font : UIFont(name: "Pokemon Solid", size: 32)!]
        
        // To remove all separators including the actual ones:
        UITableView.appearance().separatorStyle = .none
        
    }
    
    @State private var showLinkTarget = false
    
    var body: some View {
        
        ZStack {
            Color(hexStringToUIColor(hex: "#FD6B6F"))
            NavigationView {
                List(pokemonData, id: \.id) { pokemon in
                    NavigationLink(destination: PokemonDetailView(pokemon: pokemon)) {
                        PokemonRow(pokemon: pokemon)
                    }
                }
                .navigationBarTitle("Pokemon", displayMode: .automatic)
                .navigationBarItems(trailing:
                    Button(action: {
                        print("User icon pressed...")
                    }) {
                        NavigationLink(destination: AboutView()) {
                            Image("pokemon-trainer").imageScale(.small)
                        }
                    }
                )
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
