//
//  ArticlesDataProvider.swift
//  AppList
//
//  Created by Noturno on 31/01/17.
//  Copyright © 2017 Noturno. All rights reserved.
//

import Foundation


//Camada responsavel por gerenciar a ViewModel que será visualizado na View.

protocol ArticlesDataProviderProtocol: BaseProtocol {
    
    
    
}

class ArticlesDataProvider {
    
    var delegate: ArticlesDataProviderProtocol?
    
    
    //TO DO implementar o método que vem da camada API


    func getAllArticles(){
        
        ArticlesAPIStore().getAllArticles(userID: "e87c04514a87447284e49995b6c86c07") { (account, error) in
            
            if error != nil{
      
                self.delegate?.fail(error: error!)
             }else{
                guard let modelAccount = account else {return}
                let vm = ArticlesViewModel(account: modelAccount)
                self.delegate?.success(vm: modelAccount)
                self.delegate?.success(vm: vm)
            }
        }
    }
}
