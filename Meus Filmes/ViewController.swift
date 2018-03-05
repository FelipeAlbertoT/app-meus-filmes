//
//  ViewController.swift
//  Meus Filmes
//
//  Created by Felipe Treichel on 04/03/18.
//  Copyright © 2018 Felipe Treichel. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var filmes: [Filme] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filmes.append(Filme(titulo: "Filme 1", descricao: "Descricao 1", imagem: #imageLiteral(resourceName: "filme1")))
        filmes.append(Filme(titulo: "Filme 2", descricao: "Descricao 2", imagem: #imageLiteral(resourceName: "filme2")))
        filmes.append(Filme(titulo: "Filme 3", descricao: "Descricao 3", imagem: #imageLiteral(resourceName: "filme3")))
        filmes.append(Filme(titulo: "Filme 4", descricao: "Descricao 4", imagem: #imageLiteral(resourceName: "filme4")))
        filmes.append(Filme(titulo: "Filme 5", descricao: "Descricao 5", imagem: #imageLiteral(resourceName: "filme5")))
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celularReuso", for: indexPath) as! FilmeCelula
        // cell.textLabel?.text = filmes[indexPath.row].titulo
        // cell.imageView?.image = filmes[indexPath.row].imagem
        let filme = filmes[indexPath.row]
        cell.filmeImageView.image = filme.imagem
        cell.tituloLabel.text = filme.titulo
        cell.descricaoLabel.text = filme.descricao
        
        cell.filmeImageView.layer.cornerRadius = 42
        cell.filmeImageView.clipsToBounds = true
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detalheFilme" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let filmeSelecionado = self.filmes[indexPath.row]
                
                let viewControllerDestino = segue.destination as! DetalhesFilmeViewController
                viewControllerDestino.filme = filmeSelecionado
            }
        }
    }

}

