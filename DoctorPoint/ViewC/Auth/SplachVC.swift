//
//  ViewController.swift
//  DoctorPoint
//
//  Created by Micheal Hany on 3/29/22.
//

import UIKit

class SplashVC: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
            self.navigate(screenID: "on_board")
        }
        
    }


}

