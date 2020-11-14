//
//  TelephoneViewController.swift
//  ProjectEnsisa
//
//  Created by CHICHAOUI Omar on 10/11/2020.
//  Copyright © 2020 Atay. All rights reserved.
//

import UIKit

import SwiftUI
import Combine

class TelephoneViewController: UITableViewController {
    
 

   
    override func viewDidLoad() {

        super.viewDidLoad()
        print("froù the telephone" )
       
     
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //pList.sorted(by: { $0.telephone > $1.telephone } )
        filterList()
    }
    
    func filterList()
    {
     
        
        pList.sort { (a, b) -> Bool in
            a.telephone < b.telephone
        }
        tableView.reloadData()
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return pList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCell(withIdentifier: "TelephoneItemCell", for: indexPath)
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.value1, reuseIdentifier: "TelephoneItemCell")
        //cell.textLabel?.text = itemArray.pList[indexPath.row]
        
    
        cell.textLabel?.text = String(pList[indexPath.row].telephone)
        cell.detailTextLabel?.text = pList[indexPath.row].prenom + " " + pList[indexPath.row].nom
        
        
        
        
        return cell
    }
    
    func PersonHasChanged(_ person: Person)
    {
        tableView.reloadData()
    }
    


}
