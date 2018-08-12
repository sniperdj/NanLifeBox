//
//  NLBMyController.swift
//  NanLifeBox
//
//  Created by Sniper on 17/12/2017.
//  Copyright © 2017 Sniper.Edu. All rights reserved.
//

import UIKit

class NLBMyController: NLBRootViewController {

    @IBOutlet weak var myInfoView: UITableView!
    var myNavigator : NLBMyNavigator?
    
    let cellReuseId = "myInfoView.UITableViewCell"
    
    var myList = Array<Array<String>>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myNavigator = NLBMyNavigator(navigationController: self.navigationController!)
        self.myInfoView.register(UITableViewCell, forCellReuseIdentifier: cellReuseId)
    }

    override func setupData() {
        if let path = Bundle.main.path(forResource: "MyList", ofType: "plist") {
            self.myList = NSArray(contentsOfFile: path) as! [Array<String>]
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension NLBMyController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        print("self.myList.count \(self.myList.count)")
        return self.myList.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let arr = self.myList[section]
        print("arr \(arr.count)")
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseId)
        cell?.textLabel?.text = self.myList[indexPath.section][indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 1 {
            switch indexPath.row {
            case 0:
                myNavigator?.navigateTo(destination: .healthPage)
            default:
                myNavigator?.navigateTo(destination: .foreignLanguagePage)
            }
        }
    }
}
