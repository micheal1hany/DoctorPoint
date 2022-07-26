//
//  CreateAccountC.swift
//  DoctorPoint
//
//  Created by Micheal Hany on 3/29/22.
//

import UIKit

class CreateAccountC: UIViewController {
    
    @IBOutlet weak var sign_in_lbl:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        signInLblTap()
        initHideKeyboard()
       
    }
    
    func signInLblTap(){
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(CreateAccountC.signInLblTap(sender:)))
        sign_in_lbl.addGestureRecognizer(tap)
        
    }
    
    @objc func signInLblTap(sender:UITapGestureRecognizer){
        navigate(screenID: "sign_in")
    }
    

    

}
