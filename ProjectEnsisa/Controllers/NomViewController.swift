//
//  NomViewController.swift
//  ProjectEnsisa
//
//  Created by CHICHAOUI Omar on 10/11/2020.
//  Copyright © 2020 Atay. All rights reserved.
//

import UIKit

class NomViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func filterList()
    {
        
           
           pList.sort { (a, b) -> Bool in
            a.nom < b.nom
           }
           tableView.reloadData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        filterList()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        pList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "TelephoneItemCell")
               //cell.textLabel?.text = itemArray.pList[indexPath.row]
               
           
               //cell.textLabel?.text = String(pList[indexPath.row].telephone)
        cell.textLabel?.text = pList[indexPath.row].prenom + " " + pList[indexPath.row].nom
        cell.detailTextLabel?.text = String(pList[indexPath.row].telephone)
               
        return cell
    }
    
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let delete = UIContextualAction(style: .normal, title: "Delete") { (action, view , completionHandler) in
            pList.remove(at: indexPath.row)
            tableView.reloadData()
            completionHandler(true)
            
        }
        
        delete.image = UIImage(systemName: "trash")
        delete.backgroundColor = .red
        
        //swipe actions
        let swipe = UISwipeActionsConfiguration(actions: [delete])
        
        return swipe
    }

    
    func PersonHasChanged(_ person: Person)
    {
          tableView.reloadData()
    }

}
