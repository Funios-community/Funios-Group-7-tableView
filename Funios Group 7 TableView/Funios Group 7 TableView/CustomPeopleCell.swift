//
//  CustomPeopleCell.swift
//  Funios Group 7 TableView
//
//  Created by PT.Koanba on 29/07/22.
//

import Foundation
import UIKit

//class CustomPeopleCell: UITableViewCell {
//    
//    @IBOutlet weak var labelName: UILabel!
//    @IBOutlet weak var buttonDelet: UIButton!
//    @IBOutlet weak var imageViewPhoto: UIImageView!
//}
protocol Button {
    func tap(name: String)
    }

class PersonTableViewCell: UITableViewCell {
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var buttonaction: UIButton!
    @IBOutlet weak var imageViewPhoto: UIImageView!
    var delegate: Button!
    
    @IBAction func pressButton(_ sender: Any) {
        delegate.tap(name: labelName.text!)
    }
}
