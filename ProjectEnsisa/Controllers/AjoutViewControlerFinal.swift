//
//  AjoutViewControlerFinal.swift
//  ProjectEnsisa
//
//  Created by CHICHAOUI Omar on 11/11/2020.
//  Copyright © 2020 Atay. All rights reserved.
//

import UIKit
import SwiftUI
import Combine
class AjoutViewControlerFinal : UIViewController {
    
   
    weak var delegate: TelephoneViewController?
    weak var delegateNom : NomViewController?
    @IBOutlet weak var melTextField: UITextField!
    @IBOutlet weak var TelephoneTextField: UITextField!
    @IBOutlet weak var AdresseTextField: UITextField!
    @IBOutlet weak var NomTextField: UITextField!
    @IBOutlet weak var prenomTextField: UITextField!
    
    var itemArray = [Person]()
    override func viewDidLoad() {
        
        super.viewDidLoad()
    }
    
    
    @IBAction func PrenomDoneEditing(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
    
    @IBAction func NomDoneEditing(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
    
    
    @IBAction func AdressDoneEditing(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
    
    @IBAction func MelDoneEditing(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
    
    @IBAction func backgroundTap(_ sender: UIControl) {
        
        prenomTextField.resignFirstResponder()
        NomTextField.resignFirstResponder()
        AdresseTextField.resignFirstResponder()
        TelephoneTextField.resignFirstResponder()
        melTextField.resignFirstResponder()
    }
    
    func emptyFields() {
        prenomTextField.text = ""
        NomTextField.text = ""
        AdresseTextField.text = ""
        TelephoneTextField.text = ""
        melTextField.text = ""
        
    }
    
    func resignFields() {
        prenomTextField.resignFirstResponder()
               NomTextField.resignFirstResponder()
               melTextField.resignFirstResponder()
               TelephoneTextField.resignFirstResponder()
               AdresseTextField.resignFirstResponder()
               
    }
    
    @IBAction func createPerson(_ sender: UIBarButtonItem) {
        
        resignFields()
        
        let prenom = prenomTextField.text!
        let nom = NomTextField.text!
        let address = AdresseTextField.text!
        let tel = TelephoneTextField.text!
        let mel = melTextField.text!
        
        // Create new Alert
        var dialogErrorMessage = UIAlertController(title: "Confirm", message: " -aucun champs ne peut pas être vide faut bien respecter le champ mel(avec @) et le téléphone doit être un nombre", preferredStyle: .alert)
        
        
        
        // Create OK button with action handler
        let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
            return
         })
        
        //Add OK button to a dialog message
        dialogErrorMessage.addAction(ok)
        guard !prenom.isEmpty, !nom.isEmpty, !tel.isEmpty, !mel.isEmpty, mel.contains("@"), mel.contains("."), (Int(tel) != nil), address.count >= 8, !address.isEmpty else {
            
            self.present(dialogErrorMessage, animated: true, completion: nil)
            return
        }
        
        var person = Person()
        person.prenom = prenom
        person.nom = nom
        person.adress = address
        person.telephone = Int(tel)!
        person.mel = mel
        
        
        pList.append(person)
        
        
    
        delegate?.PersonHasChanged(person)
        delegateNom?.PersonHasChanged(person)
        var successMessage = UIAlertController(title: "Confirm", message: " l'ajout de contact a été bien enregistré ", preferredStyle: .alert)
        
        successMessage.addAction(ok)
        emptyFields()
        self.present(successMessage, animated: true, completion: nil)
        
        return
        
       
        
        
    }
    
}
