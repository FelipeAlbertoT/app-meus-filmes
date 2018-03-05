//
//  Filme.swift
//  Meus Filmes
//
//  Created by Felipe Treichel on 04/03/18.
//  Copyright © 2018 Felipe Treichel. All rights reserved.
//

import UIKit

class Filme {
    let titulo: String
    let descricao: String
    var imagem: UIImage
    
    init(titulo: String, descricao: String, imagem: UIImage) {
        self.titulo = titulo
        self.descricao = descricao
        self.imagem = imagem
    }
}
