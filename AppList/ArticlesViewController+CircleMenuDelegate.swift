//
//  ArticlesViewController+CircleMenuDelegate.swift
//  AppList
//
//  Created by Noturno on 13/02/17.
//  Copyright © 2017 Impacta. All rights reserved.
//

import Foundation
import CircleMenu


extension ArticlesViewController: CircleMenuDelegate{
    
    func circleMenu(_ circleMenu: CircleMenu, willDisplay button: UIButton, atIndex: Int) {
        
        
//        button.layer.cornerRadius = 0.5 * button.bounds.size.width
        button.backgroundColor = UIColor.darkGray
        
        switch atIndex {
        case 0:
            button.setBackgroundImage(UIImage(named: "img-1"), for: .normal)
            
        case 1:
            button.setBackgroundImage(UIImage(named: "img-2"), for: .normal)
            
        case 2:
            button.setBackgroundImage(UIImage(named: "img-3"), for: .normal)
            
        default:
            print("")
        }
        
        
    }

}


