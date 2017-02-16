//
//  LoginViewController+LoginDataProviderProtocol.swift
//  AppList
//
//  Created by Noturno on 14/02/17.
//  Copyright © 2017 Impacta. All rights reserved.
//

import Foundation
import UIKit

extension LoginViewController: LoginDataProviderProtocol{

    func success<T>(vm: T){
        self.performSegue(withIdentifier: "login", sender: nil)
    
    }
    
    func fail(error: NSError){
        
        let alert = UIAlertController(title: "Alerto", message: "E-mail ou senha inválidos", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: { (UIAlertAction) in
            alert.dismiss(animated: true, completion: nil)
        }))
        print(error)
    
    }
}
