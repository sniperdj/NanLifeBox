//
//  NLBHomeController.swift
//  NanLifeBox
//
//  Created by Sniper on 23/03/2018.
//  Copyright © 2018 Sniper.Edu. All rights reserved.
//

import UIKit

class NLBHomeController: NLBRootViewController {

    var homeNavigator: NLBHomeNavigator?
    let cellIdentifier = "menuView.NLBMenuCell"
    let cellConf = NLBMenuCellConf()
    
    var menuList: Array<Any>! = Array()

    @IBOutlet weak var menuView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        homeNavigator = NLBHomeNavigator(navigationController: self.navigationController!)
        
        menuView.register(UINib(nibName: "NLBMenuCell", bundle: nil), forCellWithReuseIdentifier: cellIdentifier)

    }
    
    override func setupData() {
        if let strPath = Bundle.main.path(forResource: "MenuList", ofType: "plist") {
            let tempMenuList = NSArray(contentsOfFile: strPath) as? Array<Any>
            for menuDict in tempMenuList! {
                let menuInfo = NLBMenuInfo.makeMenuInfo(dict: menuDict as! Dictionary<String, Any>)
                self.menuList?.append(menuInfo)
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

}

extension NLBHomeController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (self.menuList?.count)!
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! NLBMenuCell
        let menu = self.menuList![indexPath.item] as! NLBMainInfo
        cellConf.configure(cell: cell, forDisplaying: menu)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch indexPath.item {
        case 0:
            homeNavigator?.navigateTo(destination: .weatherPage)
        case 1:
            homeNavigator?.navigateTo(destination: .newsPage)
        default:
            homeNavigator?.navigateTo(destination: .bookPage)
        }
    }
}
