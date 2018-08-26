//
//  ZNTabBarController.swift
//  NanLifeBox
//
//  Created by Sniper on 16/12/2017.
//  Copyright © 2017 Sniper.Edu. All rights reserved.
//

import UIKit

class ZNTabBarController: UITabBarController {

    let myTabBar = UITabBar()
    var tabbarItems = [UITabBarItem]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.yellow;
        self.tabBar.isTranslucent = false
//        self.setupUI()
        self.setupChildViewControllers()
    }
    
    func setupUI() {
        let originTabbarFrame = self.tabBar.frame
        print("\(originTabbarFrame)")
        self.myTabBar.frame = originTabbarFrame
        self.myTabBar.backgroundColor = UIColor.cyan
        self.tabBar.removeFromSuperview()
        self.tabBar.isHidden = true
        self.view.addSubview(self.myTabBar)
        self.myTabBar.isTranslucent = false
    }
    
    func setupChildViewControllers() {
        let homeController = NLBHomeController(nibName: nil, bundle: nil)
        let tabbarItemHome = UITabBarItem(title: "首页", image: nil, selectedImage: nil)
        self.addOneChildController(controller: homeController, atabbarItem: tabbarItemHome)
        
        let enjoyController = NLBEnjoyController(nibName: nil, bundle: nil)
        let tabbarItemEnjoy = UITabBarItem(title: "娱乐", image: nil, selectedImage: nil)
        self.addOneChildController(controller: enjoyController, atabbarItem: tabbarItemEnjoy)
        
        let myController = NLBHomeController(nibName: nil, bundle: nil)
        let tabbarItemMy = UITabBarItem(title: "敬请期待", image: nil, selectedImage: nil)
        self.addOneChildController(controller: myController, atabbarItem: tabbarItemMy)
        

//        self.myTabBar.items = [homeController.tabBarItem, enjoyController.tabBarItem, myController.tabBarItem]

    }
    
    func addOneChildController(controller: UIViewController, atabbarItem: UITabBarItem) {
        let naviController = UINavigationController(rootViewController: controller)
        naviController.tabBarItem = atabbarItem
        self.addChildViewController(naviController)
//        self.tabbarItems.append(atabbarItem)
    }
}
