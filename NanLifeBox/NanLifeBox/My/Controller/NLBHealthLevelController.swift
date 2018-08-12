//
//  NLBHealthLevelController.swift
//  NanLifeBox
//
//  Created by Sniper on 14/04/2018.
//  Copyright © 2018 Sniper.Edu. All rights reserved.
//

import UIKit

protocol NLBHealthLevelControllerDelegate {
    func didSelectValue(strValue: String)
}

class NLBHealthLevelController: UITableViewController {

    let cellId = "tableview.heallevelcell"
    var delegate : NLBHealthLevelControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        self.tableView.register(UITableViewCell, forCellReuseIdentifier: cellId)
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 10
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        cell.textLabel?.text = String(indexPath.row)

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate?.didSelectValue(strValue: String(indexPath.row))
    }
    
}
