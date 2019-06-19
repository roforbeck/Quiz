//
//  DAOFirebase.swift
//  Quiz
//
//  Created by Rodrigo Forbeck Odppes on 17/06/19.
//  Copyright © 2019 Rodrigo Forbeck Odppes. All rights reserved.
//

import Foundation
import Firebase

class DAOFirebase {
    static func save (nome : String, telefone : String, porcentagem : Int) {
        // Add a new document with a generated ID
        let db = Firestore.firestore()
        var ref: DocumentReference? = nil
        ref = db.collection("clientes").addDocument(data: [
            "nome": nome,
            "telefone": telefone,
            "porcentagem": porcentagem
        ]) { err in
            if let err = err {
                print("Error adding document: \(err)")
            } else {
                print("Document added with ID: \(ref!.documentID)")
            }
        }
    }
    
    static func load () -> [String] {
        var listaUnidades = [String] ()
        let db = Firestore.firestore()
        db.collection("unidades").getDocuments() { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                for document in querySnapshot!.documents {
                    print("\(document.documentID) => \(document.data())")
                    listaUnidades.append(document.data()["unidade"]! as! String)
                }
            }
        }
        return listaUnidades
    }
}
