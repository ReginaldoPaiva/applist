//
//  LoginViewController.swift
//  AppList
//
//  Created by Noturno on 13/02/17.
//  Copyright © 2017 Impacta. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var buttonLogin: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    var loginDataProvider = LoginDataProvider()
    
    func setupButtonLogin(){
        
        self.buttonLogin.layer.cornerRadius = 3.0
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupButtonLogin()
        self.loginDataProvider.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
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
    
    
    func checkValues() -> Bool{
        
        var check = true
        if !(self.emailTextField.text?.isEmpty)! || (self.passwordTextField.text?.isEmpty)!{
                       
            check = false
            
        }
        return check
    }
    
    @IBAction func buttonLogin(_ sender: UIButton) {
        
        if checkValues(){
            self.loginDataProvider.login(email: self.emailTextField.text!, password: passwordTextField.text!)
            
        }
        
    }
}
