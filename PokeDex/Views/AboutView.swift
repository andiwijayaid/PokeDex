//
//  AboutView.swift
//  PokeDex
//
//  Created by Andi Wijaya on 24/06/20.
//  Copyright © 2020 Andi Wijaya. All rights reserved.
//


import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack {
            
            Text("Developed by:")
                .font(.title)
                .fontWeight(.bold)
            
            Image("andi_wijaya")
                .clipShape(Circle())
                .shadow(radius: 10)
                .overlay(
                    Circle().stroke(Color.white, lineWidth: 4))
            
            Text("Andi Wijaya")
                .font(.title)
            Text("andiwijayaid@gmail.com")
                .font(.footnote)
            
            Button(action: {
                UIApplication.shared.open(URL(string: "https://www.dicoding.com/users/58941")!)
            }) {
                HStack {
                    Image("dicoding")
                    Text("Dicoding")
                }
            }.buttonStyle(PlainButtonStyle())
                .padding(.top, 12)
            
            Button(action: {
                UIApplication.shared.open(URL(string: "https://andiwijaya.id")!)
            }) {
                HStack {
                    Image("website")
                    Text("Website")
                }
            }.buttonStyle(PlainButtonStyle())
                .padding(.top, 12)
            
            Button(action: {
                UIApplication.shared.open(URL(string: "https://github.com/andiwijayaid")!)
            }) {
                HStack {
                    Image("github")
                    Text("Github")
                }
            }.buttonStyle(PlainButtonStyle())
                .padding(.top, 12)
            
            Button(action: {
                UIApplication.shared.open(URL(string: "https://instagram.com/andiwijayaid")!)
            }) {
                HStack {
                    Image("instagram")
                    Text("Instagram")
                }
            }.buttonStyle(PlainButtonStyle())
                .padding(.top, 12)
            
            
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
