//
//  Model.swift
//  Quiz
//
//  Created by Rodrigo Forbeck Odppes on 09/05/19.
//  Copyright © 2019 Rodrigo Forbeck Odppes. All rights reserved.
//

import Foundation
import UIKit

struct Quizz {
    var nome : String
    var imagem : UIImage
    var perguntas : [Perguntas]
}

class Model {
    static let instance = Model()
    
    let perguntas1 = [
       
        Perguntas(alternativas: ["Steven Spielberg","Woody Allen","Paulo Coelho"],
                  alternativaCerta: 1,
                  imagem: UIImage(named:"woodyA") ?? UIImage(),
                  imagemResposta: UIImage(named:"woody") ?? UIImage()),
        
        Perguntas(alternativas: ["John Lennon","Steve McQueen","Elton John"],
                  alternativaCerta: 2,
                  imagem: UIImage(named:"eltonA") ?? UIImage(),
                  imagemResposta: UIImage(named:"elton") ?? UIImage()),
        
        Perguntas(alternativas: ["Steve Jobs","Keanu Reeves","Bill Gates"],
                  alternativaCerta: 0,
                  imagem: UIImage(named:"oculosSteve") ?? UIImage(),
                  imagemResposta: UIImage(named:"steve") ?? UIImage()),
        
        Perguntas(alternativas: ["Audrey Hepburn","Sophia Loren","Princesa Diana"],
                  alternativaCerta: 0,
                  imagem: UIImage(named:"audreyA") ?? UIImage(),
                  imagemResposta: UIImage(named:"audrey") ?? UIImage()),
        
        Perguntas(alternativas: ["Brad Pitt","Tom Cruise","Arnold Schwarzenegger"],
                  alternativaCerta: 1,
                  imagem: UIImage(named:"tomA") ?? UIImage(),
                  imagemResposta: UIImage(named:"tom") ?? UIImage()),
    ]
    
    let perguntas2 = [
        
        Perguntas(alternativas: ["Stevzaszazen Spielberg","Woody Allen","Paulo Coelho"],
                  alternativaCerta: 1,
                  imagem: UIImage(named:"woodyA") ?? UIImage(),
                  imagemResposta: UIImage(named:"woody") ?? UIImage()),
        
        Perguntas(alternativas: ["John Lezaznnon","Steve McQueen","Elton John"],
                  alternativaCerta: 2,
                  imagem: UIImage(named:"eltonA") ?? UIImage(),
                  imagemResposta: UIImage(named:"elton") ?? UIImage()),
        
        Perguntas(alternativas: ["Steve Jobs","Keanu Reeves","Bill Gates"],
                  alternativaCerta: 0,
                  imagem: UIImage(named:"oculosSteve") ?? UIImage(),
                  imagemResposta: UIImage(named:"steve") ?? UIImage()),
        
        Perguntas(alternativas: ["Audrey Hepburn","Sophia Loren","Princesa Diana"],
                  alternativaCerta: 0,
                  imagem: UIImage(named:"audreyA") ?? UIImage(),
                  imagemResposta: UIImage(named:"audrey") ?? UIImage()),
        
        Perguntas(alternativas: ["Brad Pitt","Tom Cruise","Arnold Schwarzenegger"],
                  alternativaCerta: 1,
                  imagem: UIImage(named:"tomA") ?? UIImage(),
                  imagemResposta: UIImage(named:"tom") ?? UIImage()),
    ]
    
    
    let perguntas3 = [
        
        Perguntas(alternativas: ["St3333even Spielberg","Woody Allen","Paulo Coelho"],
                  alternativaCerta: 1,
                  imagem: UIImage(named:"woodyA") ?? UIImage(),
                  imagemResposta: UIImage(named:"woody") ?? UIImage()),
        
        Perguntas(alternativas: ["John333 Lennon","Steve McQueen","Elton John"],
                  alternativaCerta: 2,
                  imagem: UIImage(named:"eltonA") ?? UIImage(),
                  imagemResposta: UIImage(named:"elton") ?? UIImage()),
        
        Perguntas(alternativas: ["Steve Jobs","Keanu Reeves","Bill Gates"],
                  alternativaCerta: 0,
                  imagem: UIImage(named:"oculosSteve") ?? UIImage(),
                  imagemResposta: UIImage(named:"steve") ?? UIImage()),
        
        Perguntas(alternativas: ["Audrey Hepburn","Sophia Loren","Princesa Diana"],
                  alternativaCerta: 0,
                  imagem: UIImage(named:"audreyA") ?? UIImage(),
                  imagemResposta: UIImage(named:"audrey") ?? UIImage()),
        
        Perguntas(alternativas: ["Brad Pitt","Tom Cruise","Arnold Schwarzenegger"],
                  alternativaCerta: 1,
                  imagem: UIImage(named:"tomA") ?? UIImage(),
                  imagemResposta: UIImage(named:"tom") ?? UIImage()),
    ]
    var quizzes : [Quizz] = []
    
    
    var acertos:Int = 0
    var perguntaAtual: Int = 0
    var quizzAtual: Int = 0
    private init () {
        let quizz1 = Quizz(nome: "Cinema e TV", imagem: UIImage(named: "audreyA")!, perguntas: perguntas1)
        quizzes.append(quizz1)
        let quizz2 = Quizz(nome: "Música", imagem: UIImage(named: "tomA")!, perguntas: perguntas2)
        quizzes.append(quizz2)
        let quizz3 = Quizz(nome: "Desenhos", imagem: UIImage(named: "steve")!, perguntas: perguntas3)
        quizzes.append(quizz3)
        
    }
}

