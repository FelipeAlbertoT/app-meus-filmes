//
//  DetalhesFilmeViewController.swift
//  Meus Filmes
//
//  Created by Felipe Treichel on 05/03/18.
//  Copyright © 2018 Felipe Treichel. All rights reserved.
//

import UIKit

class DetalhesFilmeViewController: UIViewController {
    
    @IBOutlet weak var filmeImageView: UIImageView!
    @IBOutlet weak var labelTitulo: UILabel!
    @IBOutlet weak var labelDescricao: UILabel!
    
    var filme:Filme!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filmeImageView.image = filme.imagem
        labelTitulo.text = filme.titulo
        labelDescricao.text = filme.descricao
    }
    
}
