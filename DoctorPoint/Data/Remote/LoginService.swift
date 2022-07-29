//
//  LoginService.swift
//  DoctorPoint
//
//  Created by Micheal Hany on 7/28/22.
//

import Foundation

class LoginService{
    
    static let shared = LoginService()
    
    private init(){}
    
    
    
    
    func login(_ email:String,_ pass:String,complation: @escaping (Bool,User?) -> Void){
        
        delay(duration: 2) { () in
            if(email == "micheal@m.com" && pass == "123456789"){
                let u = User(name: "Micheal", picture: "210599.jpeg")
                complation(true,u)
            }else{
                complation(false,nil)
            }
        }
        
    }
    
    func userData(complation: @escaping (Bool,User?) -> Void){
        
        delay(duration: 0.5) { () in
            let u = User(name: "Micheal", picture: "210599.jpg")
            complation(true,u)
        }
        
    }
    
    func delay(duration:Double,complation: @escaping () -> Void){
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(Int(duration))){
            complation()
        }
        
        
        
    }
    
    
    
}
