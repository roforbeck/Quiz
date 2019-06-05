//
//  ResultadoViewController.swift
//  Quiz
//
//  Created by Rodrigo Forbeck Odppes on 09/05/19.
//  Copyright © 2019 Rodrigo Forbeck Odppes. All rights reserved.
//

import UIKit

class ResultadoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if Model.instance.acertos < 2 {
            resultadoImageView.image = UIImage(named: "5") ?? UIImage()
        }else if Model.instance.acertos > 4 {
            resultadoImageView.image = UIImage(named: "15") ?? UIImage()
        }else{
            resultadoImageView.image = UIImage(named: "10") ?? UIImage()
            
        }

        // Do anyasasa additional setup after loading the view.
    }
    
    @IBOutlet weak var resultadoImageView: UIImageView!
    
    
}
