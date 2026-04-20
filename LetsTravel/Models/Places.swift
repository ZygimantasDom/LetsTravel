//
//  LTPlaces.swift
//  LetsTravel
//
//  Created by Zygimantas Domeikis on 20/04/2026.
//

import Foundation

struct Places: Codable, Hashable {
    let id: UUID
    let name: String
    let location: String
    let rating: Double
    let description: String
    let image: String
    let category: String
}
