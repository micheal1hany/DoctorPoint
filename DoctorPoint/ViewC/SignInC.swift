//
//  SignInC.swift
//  DoctorPoint
//
//  Created by Micheal Hany on 3/29/22.
//

import UIKit

class SignInC: UIViewController {
    
    @IBOutlet weak var usernameTF:UITextField!
    @IBOutlet weak var create_account_lbl:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        creatAccountLblTap()
        initHideKeyboard()
        
            
    }
    
    
    func creatAccountLblTap(){
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(SignInC.createAccountLblTap))
        create_account_lbl.addGestureRecognizer(tap)
        
    }
    
    @objc func createAccountLblTap(sender:UITapGestureRecognizer){
        navigate(screenID: "create_account")
        
    }
    


}
