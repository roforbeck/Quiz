//
//  PerguntasViewController.swift
//  Quiz
//
//  Created by Rodrigo Forbeck Odppes on 09/05/19.
//  Copyright © 2019 Rodrigo Forbeck Odppes. All rights reserved.
//

import UIKit

class PerguntasViewController: UIViewController {
    
    @IBOutlet weak var imagemPergunta: UIImageView!
    @IBOutlet weak var alternativaUm: UIButton!
    @IBOutlet weak var alternativaDois: UIButton!
    @IBOutlet weak var alternativaTres: UIButton!
    @IBOutlet weak var imagemResposta: UIImageView!
    
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var proximoButton: UIButton!
    
    var selecionada = 0
    var quizz: Quizz!
    
    @IBAction func proximoPressed(_ sender: Any) {
        Model.instance.perguntaAtual += 1
        proximaPergunta()
        
        
        
    }
    
    @IBAction func alternativa(_ sender: UIButton) {
        verificaAlternativa(alternativaSelecionada: sender.tag)
        mostrarResposta()
    }
    
    
    func verificaAlternativa (alternativaSelecionada:Int) {
        selecionada = alternativaSelecionada
        
       let pergunta = quizz.perguntas[Model.instance.perguntaAtual]
        if pergunta.alternativaCerta == alternativaSelecionada {
            Model.instance.acertos += 1
        }
        
        
       
    }
    
    func proximaPergunta () {
        if Model.instance.perguntaAtual > 4 {
            let vc = storyboard?.instantiateViewController(withIdentifier: "tela resultado")
            present(vc!, animated: true)
        }else{
            
            print("acertos ate agora:",Model.instance.acertos)
            
            refresh()
            
        }
    }
    
    func refresh () {
        quizz = Model.instance.quizzes [Model.instance.quizzAtual]
        
        alternativaUm.isEnabled = true
        alternativaDois.isEnabled = true
        alternativaTres.isEnabled = true
        
        proximoButton.alpha = 0
        let pergunta = quizz.perguntas[Model.instance.perguntaAtual]
        
        
        alternativaUm.setTitle(pergunta.alternativas[0], for: .normal)
        alternativaDois.setTitle(pergunta.alternativas[1], for: .normal)
        alternativaTres.setTitle(pergunta.alternativas[2], for: .normal)
        alternativaUm.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        alternativaDois.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        alternativaTres.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        imagemPergunta.image = pergunta.imagem
        imagemResposta.image = pergunta.imagemResposta
        imagemResposta.alpha = 0
        imagemPergunta.alpha = 1
        
    }
    
    func mostrarResposta () {
        print(Model.instance.perguntaAtual)
        let pergunta = quizz.perguntas[Model.instance.perguntaAtual]
        var button: UIButton
        switch pergunta.alternativaCerta {
        case 0:
            button = alternativaUm
        case 1:
            button = alternativaDois
        case 2:
            button = alternativaTres
        default:
            fatalError()
        }
        
        var redButton: UIButton
        switch selecionada {
        case 0:
            redButton = alternativaUm
        case 1:
            redButton = alternativaDois
        case 2:
            redButton = alternativaTres
        default:
            fatalError()
        }
        
        alternativaUm.isEnabled = false
        alternativaDois.isEnabled = false
        alternativaTres.isEnabled = false
        
        UIView.animate(withDuration: 1) {
            self.imagemPergunta.alpha = 0
            self.imagemResposta.alpha = 1
        }
        
        UIView.animate(withDuration: 0.2) {
            self.proximoButton.alpha = 1
            button.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
            if self.selecionada != pergunta.alternativaCerta {
                redButton.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backgroundView.layer.cornerRadius = 35
        refresh()
        
        
        // Do any additional setup after loading the view.
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
