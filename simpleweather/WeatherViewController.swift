//
//  ViewController.swift
//  simpleweather
//
//  Created by Lee minyeol on 2023/07/06.
//

import UIKit

class WeatherViewController: UIViewController {

    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    
    let weather = ["sun.max.fill", "cloud", "cloud.rain.fill", "cloud.bolt.fill"]
    let cities = ["Seoul", "Tokyo", "London", "LA"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    @IBAction func buttonTapped(_ sender: Any) {
        let imageName = weather.randomElement()!
        imageView.image = UIImage(systemName: imageName)?.withRenderingMode(.alwaysOriginal)
        cityLabel.text = cities.randomElement()
        
        let randomTemp = Int.random(in: 10 ..< 30)
        tempLabel.text = "\(randomTemp)°"
    }
}

