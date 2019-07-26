//
//  TableViewController.swift
//  TablePractice
//
//  Created by Apple on 7/26/19.
//  Copyright © 2019 Leora. All rights reserved.
//

import UIKit

struct Contact {
    var id : Int
    var title : String
    var text : String
    var image : String
}

class TableViewController: UITableViewController {

    var allContact = [
        Contact(id: 1,
              title: "Stoven",
              text: "Commonly known as a kitchen oven.",
              image: "stoven"),
        Contact(id: 2,
              title: "Thruck",
              text: "Vroom vroom!",
              image: "thruck"),
        Contact(id: 3,
              title: "Sprankles",
              text: "Thrown on you by Evan.",
              image: "sprankles")
    ]
   

    override func numberOfSections(in tableView: UITableView) -> Int {
       
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return allContact.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)
        cell.detailTextLabel?.text = allContact[indexPath.row].text
        cell.textLabel?.text = allContact[indexPath.row].title
        cell.imageView?.image = UIImage(named: allContact[indexPath.row].image)

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section Contact"
    }
    

   
}
