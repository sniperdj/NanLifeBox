//
//  NLBHealthController.swift
//  NanLifeBox
//
//  Created by Sniper on 14/04/2018.
//  Copyright © 2018 Sniper.Edu. All rights reserved.
//

import UIKit

class NLBHealthController: NLBRootViewController {
    
    @IBOutlet weak var healthInfoView: UITableView!
    
    let cellReuseId = "healthInfoView.UITableViewCell"
    let cellConf = NLBHealthCellConf()
    var healthList = Array<Dictionary<String, Any>>()
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        self.healthInfoView.register(UITableViewCell, forCellReuseIdentifier: cellReuseId)
    }

    override func setupData() {
        if let path = Bundle.main.path(forResource: "HealthList", ofType: "plist") {
            self.healthList = NSArray(contentsOfFile: path) as! [Any] as! [Dictionary<String, Any>]
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension NLBHealthController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        let count = self.healthList.count
        print("healthlist count : \(count)")
        return count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let partDict = self.healthList[section]
        let partList = partDict["partList"] as! NSArray
        
        return partList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: cellReuseId)
        
        if cell == nil {
            cell = UITableViewCell(style: .value1, reuseIdentifier: cellReuseId)
        }
        
        let partDict = self.healthList[indexPath.section]
        let partList = partDict["partList"] as! NSArray
        let dict2 = partList[indexPath.row] as! NSDictionary
        cellConf.configure(cell: cell!, forDisplaying: dict2)
        return cell!
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let partDict = self.healthList[section]
        let partName = partDict["partName"] as! String
        
        return partName
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let healthLevelController = NLBHealthController()
        self.navigationController?.pushViewController(healthLevelController, animated: true)
    }
}

extension NLBHealthController: NLBHealthLevelControllerDelegate {
    func didSelectValue(strValue: String) {
        
    }
}
