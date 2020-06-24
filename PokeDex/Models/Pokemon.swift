//
//  Pokemon.swift
//  PokeDex
//
//  Created by Andi Wijaya on 24/06/20.
//  Copyright © 2020 Andi Wijaya. All rights reserved.
//

import CoreLocation

struct Pokemon: Hashable, Codable {
    var id: Int
    var name: String
    var imageName: String
    var height: String
    var weight: Float
    var type: String
    var typeColor: String
    var mainColor: String
    var secondColor: String
    var description: String
}

