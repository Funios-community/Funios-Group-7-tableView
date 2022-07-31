//
//  ListViewController.swift
//  Funios Group 7 TableView
//
//  Created by PT.Koanba on 29/07/22.
//

import UIKit

class ListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var listPersonTableView: UITableView!
    @IBAction func onAddPerson(_ sender: Any) {
        listPeople.append(Person2(avatar: nil, name: "Name\(Int.random(in: 1...100))", contact: "name\(Int.random(in: 1...100))@gmail.com", favorite: false))
        listPersonTableView.reloadData()
        
    }
    
    var listPeople: [Person2] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listPeople = getDummyData()
        listPersonTableView.dataSource = self
        listPersonTableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listPeople.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let person = listPeople[indexPath.row]
        let actionCallBack1: CallBackFunc = { () in
            person.favorite = !person.favorite
            tableView.reloadData()
               }
        
        let cell = listPersonTableView.dequeueReusableCell(withIdentifier: "CellPersonIdentifier", for: indexPath)  as! CustomCell
        
        cell.avatarImageView.image = person.avatar
        cell.nameLabel.text = person.name
        cell.contactLabel.text = person.contact
        cell.favoriteButton.setImage(person.favoriteButtonImage(), for: .normal)
        cell.setupCell(callBackToggleFavorite: actionCallBack1)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let person = listPeople[indexPath.row]
        
        let alertDialog = UIAlertController(title: person.name, message: "Remove \(person.name)?", preferredStyle: .alert)
        let cancelButton = UIAlertAction(title: "Cancel", style: .default)
        let removeButton = UIAlertAction(title: "Remove", style: .destructive, handler: {action in
            self.listPeople.remove(at: indexPath.row)
            
            tableView.reloadData()
        })
        
        alertDialog.addAction(cancelButton)
        alertDialog.addAction(removeButton)
        self.present(alertDialog, animated: true)
    }
    
}
