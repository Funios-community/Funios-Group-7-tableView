//
//  ViewController.swift
//  TabelView
//
//  Created by Mac Pro on 02/08/22.
//

import UIKit



class ListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource,
    Button {
    func tap(name: String) {
//
        let alertDialog = UIAlertController(title: name, message: "Kamu memilih \(name)", preferredStyle: .alert)
        let actionButton = UIAlertAction(title: "OKE", style: .default)
        let cancelButton = UIAlertAction(title: "Batal", style: .destructive)
        alertDialog.addAction(actionButton)
        alertDialog.addAction(cancelButton)

        self.present(alertDialog, animated: true)
        
    }

    var ListPerson: [Person] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ListPerson = getDummyData ()
     
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ListPerson.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonTableViewCell", for: indexPath) as! PersonTableViewCell
        print("indexPath adalah \(indexPath)")
        let person = ListPerson[indexPath.row]
        cell.labelName.text = person.name
        cell.imageViewPhoto.image = person.photo
        cell.buttonaction.backgroundColor = .yellow
        cell.buttonaction.layer.cornerRadius = 2
        cell.delegate = self
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        
//        let person = ListPerson[indexPath.row]
////
//        let alertDialog = UIAlertController(title: person.name, message: "Kamu memilih \(person.name)", preferredStyle: .alert)
//        let actionButton = UIAlertAction(title: "OKE", style: .default)
//        let cancelButton = UIAlertAction(title: "Batal", style: .destructive)
//        alertDialog.addAction(actionButton)
//        alertDialog.addAction(cancelButton)
//
//        self.present(alertDialog, animated: true)
//    }
    func getDummyData () -> [Person] {
        [Person(photo: UIImage(named: "imagePerson1")!, name: "Burhan"),
         Person(photo: UIImage(named: "imagePerson2")!, name: "Santoso"),
         Person(photo: UIImage(named: "imagePerson3")!, name: "Kelly"),
         Person(photo: UIImage(named: "imagePerson4")!, name: "Jonat"),
         Person(photo: UIImage(named: "imagePerson5")!, name: "Saihan"),
         Person(photo: UIImage(named: "imagePerson1")!, name: "Burhan"),
          Person(photo: UIImage(named: "imagePerson2")!, name: "Santoso"),
          Person(photo: UIImage(named: "imagePerson3")!, name: "Kelly"),
          Person(photo: UIImage(named: "imagePerson4")!, name: "Jonat"),
          Person(photo: UIImage(named: "imagePerson5")!, name: "Saihan"),
          Person(photo: UIImage(named: "imagePerson1")!, name: "Burhan"),
           Person(photo: UIImage(named: "imagePerson2")!, name: "Santoso"),
           Person(photo: UIImage(named: "imagePerson3")!, name: "Kelly"),
           Person(photo: UIImage(named: "imagePerson4")!, name: "Jonat"),
           Person(photo: UIImage(named: "imagePerson5")!, name: "Saihan"),
        ]
    }
}

