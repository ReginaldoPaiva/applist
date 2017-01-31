//
//  AccountViewModel.swift
//  AppList
//
//  Created by Noturno on 31/01/17.
//  Copyright © 2017 Noturno. All rights reserved.
//

import Foundation

class AccountViewModel: NSObject{

    //Na viewModel sempre se usa private var.
    
    private var account: Account?
 
    
    init(account: Account?) {
        self.account = account
    }
    
    
    //Criar propriedade readOnly
    var status: String {
        
        guard let loadStatus = self.account?.status else {return ""}
        return loadStatus
        
    }
    
    var articles: [Articles] {
    
        guard let loadArticles = self.account?.articles else {return []}
        return loadArticles
    
    }
    
    var source: String{
        
        guard let loadSource = self.account?.source else {return ""}
        return loadSource    }
    
    var sortBy: String {
        
        guard let loadSortBy = self.account?.sortBy else {return ""}
        return loadSortBy
    }
    
}
