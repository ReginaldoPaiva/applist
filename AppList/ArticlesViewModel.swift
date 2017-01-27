//
//  ArticlesViewModel.swift
//  AppList
//
//  Created by Noturno on 26/01/17.
//  Copyright © 2017 Noturno. All rights reserved.
//

import Foundation


class ArticlesViewModel: NSObject{
    
    private var account: Account?
    private var articlesArray: [Articles]?
    private var currentArticle: Articles?
    
    init(account: Account?) {
        self.account = account
        self.articlesArray = account?.articles
    }
    
    
    //Criar propriedade readOnly
    var title: String {
    
        guard let loadTitle = self.currentArticle?.title else {return ""}
        return loadTitle
    
    }
    
    var author: String{
    
        guard let loadAuthor = self.currentArticle?.author else {return ""}
        return loadAuthor
    }
    
    var urlToImage: String{
    
        guard let loadUrlToImage = self.currentArticle?.urlToImage else {return ""}
        return loadUrlToImage
    }
    
    var descriptionValue: String {
    
        guard let loadDescriptionValue = self.currentArticle?.descriptionValue else {return ""}
        return loadDescriptionValue
    }
    
    var publishedAt: String {
        
        guard let loadPublishedAt = self.currentArticle?.publishedAt else {return ""}
        return loadPublishedAt
    }

    var url: String {
        
        guard let loadUrl = self.currentArticle?.url else {return ""}
        return loadUrl
    }
    
    var loadArticlesArray: [Articles]{
    
        return self.articlesArray!
    }
    
    func loadCountArticles(indice: Int){
        self.currentArticle = self.articlesArray?[indice]
    }
    
    
}

