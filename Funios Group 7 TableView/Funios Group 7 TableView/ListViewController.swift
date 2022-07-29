//
//  ListViewController.swift
//  Funios Group 7 TableView
//
//  Created by PT.Koanba on 29/07/22.
//

import UIKit

class ListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var listPersonTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "CellPersonIdentifier")
        cell.textLabel?.text = "Example"
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
}
