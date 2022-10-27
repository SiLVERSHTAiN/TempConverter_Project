//
//  ViewController.swift
//  Converter
//
//  Created by Aleksandr on 10/26/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var changeSlider: UISlider! {
        didSet{
            changeSlider.maximumValue = 50
            changeSlider.minimumValue = -50
            changeSlider.value = 0
        }
    }
    

    @IBAction func convertTemp() {
        celsiusLabel.text = "\(round(changeSlider.value))ºC"
        let fTemp = (changeSlider.value * 9 / 5) + 32
        fahrenheitLabel.text = "\(round(fTemp))ºF"
    }
}

