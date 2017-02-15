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
            button.setBackgroundImage(UIImage(named: "img-camera"), for: .normal)            
            
        default:
            print("")
        }
    }
    
    
    func circleMenu(_ circleMenu: CircleMenu, buttonWillSelected: UIButton, atIndex: Int){
        
            switch atIndex {
            case 0:
                break
            case 1:
                break
            case 2:
                self.tappedShowCamera()
                break
            default:
                print("Deu ruim")
            }
        
        
    }

    func tappedShowCamera(){
    
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.photoLibrary){
        
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.photoLibrary
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated: true, completion: nil)
        }
    
    }

}


extension ArticlesViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate{



}
