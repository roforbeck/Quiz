//
//  Perguntas.swift
//  Quiz
//
//  Created by Rodrigo Forbeck Odppes on 09/05/19.
//  Copyright © 2019 Rodrigo Forbeck Odppes. All rights reserved.
//

import Foundation
import UIKit

class Perguntas {
    internal init(alternativas: [String], alternativaCerta: Int, imagem: UIImage, imagemResposta: UIImage) {
        self.alternativas = alternativas
        self.imagem = imagem
        self.alternativaCerta = alternativaCerta
        self.imagemResposta = imagemResposta
    
    }
    
    var alternativas: [String]
    var imagem: UIImage
    var alternativaCerta: Int
    var imagemResposta: UIImage
}
