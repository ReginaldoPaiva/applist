//
//  LoadingViewController.swift
//  AppList
//
//  Created by Noturno on 31/01/17.
//  Copyright © 2017 Noturno. All rights reserved.
//

import UIKit
//import ALLoadingView

class LoadingViewController: UIViewController {
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
LoadingView.isLoading(view: self.view, show: true)

        // Do any additional setup after loading the view.
    }
    
//    func showLoading(){
//    
//        ALLoadingView.manager.blurredBackground = true
//        ALLoadingView.manager.showLoadingView(ofType: .messageWithIndicatorAndCancelButton, windowMode: .fullscreen)
//        ALLoadingView.manager.cancelCallback = {
//            ALLoadingView.manager.hideLoadingView()
//         }
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
