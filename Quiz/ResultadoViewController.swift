//
//  ResultadoViewController.swift
//  Quiz
//
//  Created by Rodrigo Forbeck Odppes on 09/05/19.
//  Copyright © 2019 Rodrigo Forbeck Odppes. All rights reserved.
//

import UIKit

class ResultadoViewController: UIViewController {
    @IBOutlet weak var nomeField: UITextField!
    
    @IBOutlet weak var telefoneField: UITextField!
    var porcentagem : Int = 5
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if Model.instance.acertos < 2 {
            resultadoImageView.image = UIImage(named: "5") ?? UIImage()
            porcentagem = 5
        }else if Model.instance.acertos > 4 {
            resultadoImageView.image = UIImage(named: "15") ?? UIImage()
            porcentagem = 15
        }else{
            resultadoImageView.image = UIImage(named: "10") ?? UIImage()
            porcentagem = 10
            
        }

        // Do anyasasa additional setup after loading the view.
    }
    
    @IBOutlet weak var resultadoImageView: UIImageView!
    
    @IBAction func submitButton(_ sender: Any) {
        DAOFirebase.save(nome: nomeField.text!, telefone: telefoneField.text!, porcentagem: porcentagem)
    }
    
}
