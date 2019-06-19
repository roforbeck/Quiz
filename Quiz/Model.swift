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
        
        Perguntas(alternativas: ["Walter White, de Breaking Bad","Lineu, de A Grande Família","John Locke, de LOST"],
                  alternativaCerta: 0,
                  imagem: UIImage(named:"walterA") ?? UIImage(),
                  imagemResposta: UIImage(named:"walterB") ?? UIImage()),
        
        Perguntas(alternativas: ["Madonna","Lolita","Susan, de Patricinhas de Beverly Hills"],
                  alternativaCerta: 1,
                  imagem: UIImage(named:"lolitaA") ?? UIImage(),
                  imagemResposta: UIImage(named:"lolitaB") ?? UIImage()),
        
        Perguntas(alternativas: ["Tony Stark, Homem de Ferro","Morpheus, Matrix","Doc Brown, De Volta para o Futuro"],
                  alternativaCerta: 1,
                  imagem: UIImage(named:"morpheusA") ?? UIImage(),
                  imagemResposta: UIImage(named:"morpheusB") ?? UIImage()),
        
        Perguntas(alternativas: ["Brad Pitt","Tom Cruise","Arnold Schwarzenegger"],
                  alternativaCerta: 1,
                  imagem: UIImage(named:"tomA") ?? UIImage(),
                  imagemResposta: UIImage(named:"tom") ?? UIImage()),
    ]
    
    let perguntas2 = [
        
        Perguntas(alternativas: ["John Lennon","Steve McQueen","Elton John"],
                  alternativaCerta: 0,
                  imagem: UIImage(named:"lennonA") ?? UIImage(),
                  imagemResposta: UIImage(named:"lennonB") ?? UIImage()),
        
        Perguntas(alternativas: ["Bono Vox","Harry Styles","Elton John"],
                  alternativaCerta: 2,
                  imagem: UIImage(named:"eltonA") ?? UIImage(),
                  imagemResposta: UIImage(named:"elton") ?? UIImage()),
        
        Perguntas(alternativas: ["Bon Jovi","Marcelo D2","Kurt Cobain"],
                  alternativaCerta: 2,
                  imagem: UIImage(named:"kurtA") ?? UIImage(),
                  imagemResposta: UIImage(named:"kurtB") ?? UIImage()),
        
        Perguntas(alternativas: ["Madonna","Bonovox","Katy Perry"],
                  alternativaCerta: 1,
                  imagem: UIImage(named:"bonoA") ?? UIImage(),
                  imagemResposta: UIImage(named:"bonoB") ?? UIImage()),
        
        Perguntas(alternativas: ["Elvis Presley","Eddie Vedder","Luan Santana"],
                  alternativaCerta: 0,
                  imagem: UIImage(named:"elvisA") ?? UIImage(),
                  imagemResposta: UIImage(named:"elvisB") ?? UIImage()),
    ]
    
    
    let perguntas3 = [
        
        Perguntas(alternativas: ["Bob Esponja","Homer Simpson","Minions"],
                  alternativaCerta: 2,
                  imagem: UIImage(named:"minionsA") ?? UIImage(),
                  imagemResposta: UIImage(named:"minionsB") ?? UIImage()),
        
        Perguntas(alternativas: ["Roz, de Monstros SA","Edna de Os Incríveis","Carl, de UP"],
                  alternativaCerta: 2,
                  imagem: UIImage(named:"upA") ?? UIImage(),
                  imagemResposta: UIImage(named:"upB") ?? UIImage()),
        
        Perguntas(alternativas: ["Bob Esponja","Charlie, de Rugrats - Anjinhos","Minions"],
                  alternativaCerta: 0,
                  imagem: UIImage(named:"bobA") ?? UIImage(),
                  imagemResposta: UIImage(named:"bobB") ?? UIImage()),
        
        Perguntas(alternativas: ["Milhouse, de Os Simpsons","Harry Potter","Daria"],
                  alternativaCerta: 1,
                  imagem: UIImage(named:"harryA") ?? UIImage(),
                  imagemResposta: UIImage(named:"harryB") ?? UIImage()),
        
        Perguntas(alternativas: ["Bob Esponja","Chuckie, de Rugrats - Anjinhos","Minions"],
                  alternativaCerta: 1,
                  imagem: UIImage(named:"chuckieA") ?? UIImage(),
                  imagemResposta: UIImage(named:"chuckieB") ?? UIImage()),
        
    ]
    
    let perguntas4 = [
        
        Perguntas(alternativas: ["Bono Vox","Harry Styles","Elton John"],
                  alternativaCerta: 2,
                  imagem: UIImage(named:"eltonA") ?? UIImage(),
                  imagemResposta: UIImage(named:"elton") ?? UIImage()),
        
        Perguntas(alternativas: ["Roz, de Monstros SA","Edna de Os Incríveis","Carl, de UP"],
                  alternativaCerta: 2,
                  imagem: UIImage(named:"upA") ?? UIImage(),
                  imagemResposta: UIImage(named:"upB") ?? UIImage()),
        
        Perguntas(alternativas: ["Steve Jobs","Keanu Reeves","Bill Gates"],
                  alternativaCerta: 0,
                  imagem: UIImage(named:"oculosSteve") ?? UIImage(),
                  imagemResposta: UIImage(named:"steve") ?? UIImage()),
        
        Perguntas(alternativas: ["Audrey Hepburn","Sophia Loren","Princesa Diana"],
                  alternativaCerta: 0,
                  imagem: UIImage(named:"audreyA") ?? UIImage(),
                  imagemResposta: UIImage(named:"audrey") ?? UIImage()),
        
        Perguntas(alternativas: ["Walter White, de Breaking Bad","Lineu, de A Grande Família","John Locke, de LOST"],
                  alternativaCerta: 0,
                  imagem: UIImage(named:"walterA") ?? UIImage(),
                  imagemResposta: UIImage(named:"walterB") ?? UIImage()),
    ]
    var quizzes : [Quizz] = []
    
    
    var acertos:Int = 0
    var perguntaAtual: Int = 0
    var quizzAtual: Int = 0
    private init () {
        let quizz1 = Quizz(nome: "Cinema e TV", imagem: UIImage(named: "temaCinema")!, perguntas: perguntas1)
        quizzes.append(quizz1)
        let quizz2 = Quizz(nome: "Música", imagem: UIImage(named: "temaMusica")!, perguntas: perguntas2)
        quizzes.append(quizz2)
        let quizz3 = Quizz(nome: "Kids", imagem: UIImage(named: "temaDesenhos")!, perguntas: perguntas3)
        quizzes.append(quizz3)
        let quizz4 = Quizz(nome: "MIX", imagem: UIImage(named: "temaMix")!, perguntas: perguntas4)
        quizzes.append(quizz4)
    }
    
}

