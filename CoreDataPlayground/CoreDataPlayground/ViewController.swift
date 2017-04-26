//
//  ViewController.swift
//  CoreDataPlayground
//
//  Created by Paweł Liczmański on 26.04.2017.
//  Copyright © 2017 Paweł Liczmański. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    var people: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        title = "Friends List"
        
        view.backgroundColor = UIColor.green
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        let managedContext = appDelegate.persistentContainer.viewContext
        
        do{
           people = try managedContext.fetch(Person.fetchRequest())
        } catch let error as NSError {
            print("fetching people failed \(error)")
        }
        
        tableView.reloadData()
        
    }
    
    @IBAction func addFriend(_ sender: UIBarButtonItem) {
        
        let alert = UIAlertController(title: "Add Friend", message: "Put data to text fields", preferredStyle: .alert)
        
        
        
        let actionSave = UIAlertAction(title: "Save", style: .default) { [unowned self] action in
            
            guard let nameToSave = alert.textFields?[0].text else {
                return
            }
            
            self.save(friendName: nameToSave)
            
            alert.dismiss(animated: true, completion: nil)
            self.tableView.reloadData()
        }
        
        let actionCancel = UIAlertAction(title: "Cancel", style: .cancel, handler: { action in
        alert.dismiss(animated: true, completion: nil)})
        
        alert.addTextField()
        
        alert.textFields?[0].placeholder = "Friend Name"
        
        alert.addAction(actionSave)
        alert.addAction(actionCancel)
        
        present(alert, animated: true, completion: nil)
        
        
    }
    
    func save(friendName: String){
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        let managedContext = appDelegate?.persistentContainer.viewContext
        
        let person = Person(entity: Person.entity(), insertInto: managedContext)
        
        person.name = friendName
        
        do {
            try managedContext?.save()
            people.append(person)
        } catch let error as NSError {
            print("Saving entity person failed \(error)")
        }
    }
    

    

}



extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell", for: indexPath) as! FriendCell
        
        let person = people[indexPath.row]
        
        cell.friendNameLabel.text = person.name
        cell.friendNameLabel.backgroundColor = UIColor.green
        cell.backgroundColor = UIColor.darkGray
        
        return cell
    }
    
}

extension ViewController: UITableViewDelegate {
    
    
    
    
}

