//
//  ViewController.swift
//  CatalystAccent

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.view.backgroundColor = UIColor.catalystAccent()
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        self.view.backgroundColor = UIColor.catalystAccent()
    }


}

extension UIColor {
    
    class func catalystAccent() -> UIColor? {
        
        let hasAccentSet = UserDefaults.standard.object(forKey: "AppleAccentColor") != nil

        let systemAccentColor = UserDefaults.standard.integer(forKey: "AppleAccentColor")
        var returnColor = UIColor(named: "BLUE")

        if hasAccentSet {
            switch systemAccentColor {
                case -1:
                    returnColor = UIColor(named: "GRAY")
                case 0:
                    returnColor = UIColor(named: "RED")
                case 1:
                    returnColor = UIColor(named: "ORANGE")
                case 2:
                    returnColor = UIColor(named: "YELLOW")
                case 3:
                    returnColor = UIColor(named: "GREEN")
                case 5:
                    returnColor = UIColor(named: "PURPLE")
                case 6:
                    returnColor = UIColor(named: "PINK")
                default:
                    break
            }
        }

        return returnColor
    }
}
