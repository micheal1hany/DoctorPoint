//
//  HomeVC.swift
//  DoctorPoint
//
//  Created by Micheal Hany on 5/12/22.
//

import UIKit

class ControllerHostVC: UIViewController {
    
    @IBOutlet var container: UIView!
    
    
    @IBOutlet weak var homeBtn: UIButton!
    @IBOutlet weak var notificationBtn: UIButton!
    @IBOutlet weak var searchBtn: UIButton!
    @IBOutlet weak var docsBtn: UIButton!
    @IBOutlet weak var categoryBtn: UIButton!
    
    var requestID = "home"
    var requestStory = "Home"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        replacev()

        
    }
    
    @objc func replacev(){
        ViewEmbedder.embed(
            withIdentifier: requestID,
            parent: self,
            container: self.container,requestStory)
    }
    
    
    @IBAction func homeBtn(_ sender: Any) {
        
        
    }
    @IBAction func notificationBtn(_ sender: Any) {
        
        
        notificationBtn.isSelected = true
    }
    @IBAction func searchBtn(_ sender: Any) {
    }
    @IBAction func docsBtn(_ sender: Any) {
    }
    @IBAction func categoryBtn(_ sender: Any) {
    }
    
//    func btnClicked(_ key: Int, _ btn:UIButton){
//        switch key {
//        case 1:
//            btn.backgroundImage(for: .normal)?.alpha(1)
//        default:
//            return
//        }
//    }
//
    
  

}
