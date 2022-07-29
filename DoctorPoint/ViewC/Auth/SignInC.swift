//
//  SignInC.swift
//  DoctorPoint
//
//  Created by Micheal Hany on 3/29/22.
//

import UIKit

class SignInC: UIViewController {
    
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordTxt:UITextField!
    @IBOutlet weak var create_account_lbl:UILabel!
    
    let loginVM = LoginViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        creatAccountLblTap()
        initHideKeyboard()
        setBinders()
        
            
    }
    
    
    @IBAction func signInBtn(_ sender: Any) {
        
        loginVM.login(emailTxt.text!, passwordTxt.text!)
        
        
    }
    
    func setBinders(){
        loginVM.error.bind { (e) in
            if let error = e{
                if error == "Invalid Email or Password"{
                    self.alert(error)
                }else{
                    self.navigate("Home", screenID: "controller_host")
                }
            }
        }
    }
    
    
    func creatAccountLblTap(){
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(SignInC.createAccountLblTap))
        create_account_lbl.addGestureRecognizer(tap)
        
    }
    
    @objc func createAccountLblTap(sender:UITapGestureRecognizer){
        navigate(screenID: "create_account")
        
    }
    


}
