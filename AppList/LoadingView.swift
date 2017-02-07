//
//  AbstractLoading.swift
//  AppList
//
//  Created by Noturno on 31/01/17.
//  Copyright © 2017 Noturno. All rights reserved.
//

import Foundation
import ALLoadingView
import ASProgressHud

class LoadingView: NSObject{

    static func showLoading (){
    
        ALLoadingView.manager.blurredBackground = true
        ALLoadingView.manager.showLoadingView(ofType: .basic)
    }
    
    static func hideLoading(){
    
        ALLoadingView.manager.hideLoadingView()
    }
    
   static func isLoading(view: UIView, show: Bool){
    
        if show {
            ASProgressHud.showHUDAddedTo(view, animated: true, type: .default)
        }else{
        
            ASProgressHud.hideHUDForView(view, animated: true)
        }
    }
}
