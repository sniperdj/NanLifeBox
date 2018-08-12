//
//  NLBWeatherController.swift
//  NanLifeBox
//
//  Created by Sniper on 23/03/2018.
//  Copyright © 2018 Sniper.Edu. All rights reserved.
//

import UIKit
import ReactiveCocoa
import ReactiveSwift

class NLBWeatherController: NLBRootViewController {
    // UI
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var temperature: UILabel!
    @IBOutlet weak var weather: UILabel!
    @IBOutlet weak var daysWeatherView: UICollectionView!
    // view model
    var weatherViewModel = NLBWeatherViewModel()
    
    // data
    let cellIdentifier = "daysWeatherView.daysWeatherCell"
    let cellconf = NLBCellConfigurator()
    let weatherData = NLBWeatherData()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        daysWeatherView.register(UINib(nibName: "NLBDaysWeatherCell", bundle: nil), forCellWithReuseIdentifier: cellIdentifier)
    }
    
    override func setupData() {

    }
    
    override func bindingViewModel() {
        city.reactive.text <~ weatherViewModel.city
        temperature.reactive.text <~ weatherViewModel.temperature
        weather.reactive.text <~ weatherViewModel.weather
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension NLBWeatherController : UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath)
        cell.backgroundColor = UIColor.orange
//        cellconf.configure(cell: cell, forDisplaying: "111")
        
        return cell
    }
    
    
}
