//
//  CustomCell.swift
//  Funios Group 7 TableView
//
//  Created by Nadia Darin on 30/07/22.
//

import Foundation
import UIKit

typealias CallBackFunc = () -> Void


class CustomCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var contactLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var favoriteButton: UIButton!
    var callBackToggleFavorite: CallBackFunc?
    
    func setupCell(callBackToggleFavorite: @escaping CallBackFunc) {
        self.callBackToggleFavorite = callBackToggleFavorite
    }
    
    @IBAction func toggleFavorite(_ sender: UIButton) {
        guard let callBackToggleFavorite = self.callBackToggleFavorite else { return }
        callBackToggleFavorite()
    }

}
