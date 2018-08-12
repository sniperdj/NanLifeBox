//
//  NLBEnjoyController.swift
//  NanLifeBox
//
//  Created by Sniper on 17/12/2017.
//  Copyright © 2017 Sniper.Edu. All rights reserved.
//

import UIKit

class NLBEnjoyController: NLBRootViewController {

    
    @IBOutlet weak var textJokeTblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textJokeTblView.register(UITableViewCell, forCellReuseIdentifier: "reuseIdentifier")
    }
    
}

extension NLBEnjoyController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 11
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
//        let arr : Array = self.jokeInfo.data.data
//
//        let cellData : NLBNeihanInfoOneData = arr[indexPath.row]
        
        cell.textLabel?.text = "12"
        
        return cell
    }
}
