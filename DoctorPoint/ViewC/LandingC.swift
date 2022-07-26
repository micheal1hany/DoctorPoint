//
//  LandingC.swift
//  DoctorPoint
//
//  Created by Micheal Hany on 3/29/22.
//

import UIKit

class LandingC: UIViewController {
    
    
    @IBAction func create_account_btn(_ sender: Any) {
        navigate(screenID: "create_account")
        
    }
    
    @IBAction func sign_in_btn(_ sender: Any) {
        
        navigate(screenID: "sign_in")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

    }
    



}
