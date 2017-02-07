//
//  ViewController.swift
//  AppList
//
//  Created by Noturno on 24/01/17.
//  Copyright © 2017 Noturno. All rights reserved.
//

import UIKit

class ArticlesViewController: UIViewController {
    
    
    
    var dataProvider = ArticlesDataProvider()
    var viewModel: ArticlesViewModel?
    
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Hello World")
        self.dataProvider.delegate = self
        LoadingView.isLoading(view: self.view, show: true)
        self.dataProvider.getAllArticles()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ArticlesViewController: ArticlesDataProviderProtocol{
    
    func success<T>(vm: T) {
        
        LoadingView.isLoading(view: self.view, show: false)
        guard let currentVM = vm as? ArticlesViewModel else {return}
        self.viewModel = currentVM
    }
    
    func fail(error: NSError) {
        
    }
}
