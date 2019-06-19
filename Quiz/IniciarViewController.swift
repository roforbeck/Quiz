//
//  IniciarViewController.swift
//  Quiz
//
//  Created by Rodrigo Forbeck Odppes on 12/06/19.
//  Copyright © 2019 Rodrigo Forbeck Odppes. All rights reserved.
//

import UIKit

class IniciarViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let lista = DAOFirebase.load()

        // Do any additional setup after loading the view.
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }

    override var prefersHomeIndicatorAutoHidden: Bool {
        return true
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        Model.instance.perguntaAtual = 0
        Model.instance.acertos = 0
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
