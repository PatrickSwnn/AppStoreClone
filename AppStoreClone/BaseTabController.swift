//
//  BaseTabController.swift
//  AppStoreClone
//
//  Created by Swan Nay Phue Aung on 23/08/2024.
//

import UIKit

class BaseTabController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tabBarAppearance = UITabBarAppearance()
        UITabBar.appearance().standardAppearance = tabBarAppearance
        UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
        UITabBar.appearance().barTintColor = .white
        UITabBar.appearance().isTranslucent = true
        
        

        
        viewControllers = [
            createTabViewController(viewController: SearchViewController(), title: "Search", imageName: "search"),
            createTabViewController(viewController: UIViewController(), title: "Today", imageName: "today_icon"),
            createTabViewController(viewController: UIViewController(), title: "Apps", imageName: "apps"),
        ]

       
        
        
    }
    
    fileprivate func createTabViewController(viewController:UIViewController, title : String, imageName: String) -> UIViewController {
        let navViewController = UINavigationController(rootViewController: viewController)
        viewController.navigationItem.title = title
        viewController.view.backgroundColor = .white
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = UIImage(named: imageName)
        navViewController.navigationBar.prefersLargeTitles = true
        return navViewController
    }
    

}
