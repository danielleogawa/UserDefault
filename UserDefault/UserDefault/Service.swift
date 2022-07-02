//
//  Service.swift
//  UserDefault
//
//  Created by Danielle Nozaki Ogawa on 2022/07/02.
//

import Foundation

class Service {
    let userDefaults = UserDefaults.standard
    var nomes: [String] = []
    
    func loadDefaults(completion: ([String]) ->Void){
        nomes = userDefaults.object(forKey: "nomes") as? [String] ?? []
        userDefaults.set(nomes, forKey: "nomes")
        completion(nomes)
    }
    
    func addNovoNome(_ nome: String){
        nomes.append(nome)
        userDefaults.set(nomes, forKey: "nomes")
    }
    
}
