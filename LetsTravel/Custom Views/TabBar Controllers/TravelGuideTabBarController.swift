//
//  TravelGuideTabBarController.swift
//  LetsTravel
//
//  Created by Zygimantas Domeikis on 16/04/2026.
//

import UIKit

class TravelGuideTabBarController: UITabBarController {
        
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTabBar()
    }
    
    private func configureTabBar() {
        viewControllers = [
            searchPlacesNC(),
            travelerMapNC(),
            favoritePlacesNC(),
            travelerProfileNC()
        ]
    }
    
    func searchPlacesNC() -> UINavigationController {
        let searchNC = SearchPlacesVC()
        searchNC.title = "Lets Search!"
        let navController = UINavigationController(rootViewController: searchNC)
        navController.tabBarItem = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), tag: 0)
        return navController
    }
    
    func travelerMapNC() -> UINavigationController {
        let travelerMapVC = TravelerMapVC()
        travelerMapVC.title = "Traveler Map"
        let navController = UINavigationController(rootViewController: travelerMapVC)
        navController.tabBarItem = UITabBarItem(title: "Map", image: UIImage(systemName: "map.fill"), tag: 1)
        return navController
    }
    
    func favoritePlacesNC() -> UINavigationController {
        let favoritePlacesVC = FavoritePlacesVC()
        favoritePlacesVC.title = "My Favorite Places"
        let navController = UINavigationController(rootViewController: favoritePlacesVC)
        navController.tabBarItem = UITabBarItem(title: "Favorites", image: UIImage(systemName: "star.fill"), tag: 2)
        return navController
    }
    
    func travelerProfileNC() -> UINavigationController {
        let travelerProfileVC = TravelerProfileVC()
        travelerProfileVC.title = "Traveler Profile"
        let navController = UINavigationController(rootViewController: travelerProfileVC)
        navController.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person.crop.circle.fill"), tag: 3)
        return navController
    }
}
