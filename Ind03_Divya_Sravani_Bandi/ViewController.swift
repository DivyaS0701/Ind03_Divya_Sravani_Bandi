//
//  ViewController.swift
//  Ind03_Divya_Sravani_Bandi
//
//  Created by Bandi, Divya Sravani on 4/5/24.
//

import UIKit

class ViewController: UIViewController {
        //Defining the labels in view
        @IBOutlet weak var flagImageView: UIImageView!
        @IBOutlet weak var nameLabel: UILabel!
        @IBOutlet weak var mapImageView: UIImageView!
        @IBOutlet weak var areaLabel: UILabel!

        var stateFlag: UIImage?
        var stateName: String?
        var stateMap: UIImage?
        var stateArea: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Assigning passed details to the view
        if let flag = stateFlag {
            flagImageView.image = flag
        }
        nameLabel.text = stateName
        nameLabel.font = UIFont.boldSystemFont(ofSize: 24)
        nameLabel.textAlignment = .center
        if let map = stateMap{
            mapImageView.image = map
        }
        if let area = stateArea{
            areaLabel.text = "\(area)"
            areaLabel.textAlignment = .center
        }
    }


}

