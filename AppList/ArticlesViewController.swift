//
//  ViewController.swift
//  AppList
//
//  Created by Noturno on 24/01/17.
//  Copyright © 2017 Impacta. All rights reserved.
//

import UIKit


class ArticlesViewController: UIViewController {

    var dataProvider =  ArticlesDataProvider()
    var viewModel: ArticlesViewModel?
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
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

