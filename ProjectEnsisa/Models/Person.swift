//
//  Person.swift
//  ProjectEnsisa
//
//  Created by CHICHAOUI Omar on 11/11/2020.
//  Copyright © 2020 Atay. All rights reserved.
//

import Foundation


struct Person {
    var prenom:String = ""
    var nom:String = ""
    var adress: String = ""
    var telephone: Int =  0
    var mel  :String  = ""
}





var law = Person(prenom: "Lawrence", nom: "Ellison", adress: "12 rue de lumiere", telephone: 18006330738, mel: "law@gmail.com")

var bill = Person(prenom: "Bill", nom: "Gates", adress: "Orange County CA", telephone: 0825827829, mel: "bill.gates@microsoft.com")

var steve = Person(prenom:"Stev", nom: "Jobs", adress: "2 rue de Paris", telephone: 4089961010, mel: "philip@gmail.com")

var philp = Person(prenom:"Philip", nom: "Schiller", adress: "21 rue de Strasbourg ", telephone: 4089961011, mel: "stevep@gmail.com")

var bert = Person(prenom: "Bertrand", nom: "Serlet", adress: "12, rue de COlmar", telephone: 4089961012, mel: "bertrand.srlt@orange.com")

var pList : [Person] = [law,bill,steve,philp,bert]

