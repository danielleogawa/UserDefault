//
//  ViewModel.swift
//  UserDefault
//
//  Created by Danielle Nozaki Ogawa on 2022/07/02.
//

import Foundation

class ViewModel {
    
    let service = Service()
    var nomes: [String] = []
    
    func loadNomes(){
        service.loadDefaults { nomes in
            self.nomes = nomes
        }
    }
    
    func getNome(nome: String?) {
        guard let nome = nome else { return }
        service.addNovoNome(nome)
        loadNomes()
    }
    
    func getQuantidadeDeNomes() -> Int{
        loadNomes()
        return nomes.count

    }
    
    func getNome(posicao: Int) -> String {
        loadNomes()
        return nomes[posicao]
    }
}
