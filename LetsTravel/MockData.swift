//
//  MockData.swift
//  LetsTravel
//
//  Created by Zygimantas Domeikis on 21/04/2026.
//

import UIKit


enum MockData {
    static let paris = Place(
        name: "Eiffel Tower",
        location: "Paris, France",
        rating: 4.8,
        description: "One of the most famous landmarks in the world.",
        image: "paris",
        category: "Landmarks"
    )

    static let rome = Place(
        name: "Colosseum",
        location: "Rome, Italy",
        rating: 4.7,
        description: "An ancient amphitheatre and one of Rome’s greatest attractions.",
        image: "rome",
        category: "Historical"
    )

    static let places = [paris, rome]
}
