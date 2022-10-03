//
//  TabBaController.swift
//  Mobi Uz Project
//
//  Created by humoyun on 06/08/22.
//

import UIKit
import SnapKit


class ViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
         initView()
        view.backgroundColor = .appWhite

    }
    func initView() {
         tabBar.tintColor = #colorLiteral(red: 0.8933964372, green: 0.05029817671, blue: 0.04642786086, alpha: 1)
        tabBar.barTintColor = .white

        let homeVC = HomeView()
        
        let home = UITabBarItem(title: "Home", image: #imageLiteral(resourceName: "home"),selectedImage: #imageLiteral(resourceName: "home") )

        homeVC.tabBarItem = home
      
        let bookVC = Ussed()
        let books = UITabBarItem(title: "Ussd", image: UIImage(named: "ussd"), selectedImage: UIImage(named: "ussd"))
       
        bookVC.tabBarItem = books
      
        let menuVC = ProfileView()
        let menu = UITabBarItem(title: " Profile", image: UIImage(named: "user"), selectedImage: UIImage(named: "user"))

        menuVC.tabBarItem = menu
        self.viewControllers = [homeVC, bookVC, menuVC]
     }
    
    }


