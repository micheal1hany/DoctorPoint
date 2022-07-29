//
//  LoginViewmodel.swift
//  DoctorPoint
//
//  Created by Micheal Hany on 7/28/22.
//

import Foundation

class LoginViewModel{
    
    var error:ObservableObject<String?> = ObservableObject(nil)
    var userData:ObservableObject<User?> = ObservableObject(nil)

    
    
    
    func login(_ email:String,_ pass:String){
        
        LoginService.shared.login(email,pass) { (e,u) in
            self.error.value = e ? "ok":"Invalid Email or Password"
            self.userData.value = u
        }
    }
    
    func getUserData(){
        LoginService.shared.userData { (Bool, user) in
            self.userData.value = user
        }
    }
    
    
}
