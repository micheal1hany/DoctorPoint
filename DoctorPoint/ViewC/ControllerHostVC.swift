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
    
    
    var lastSender = 1
    var requestID = "home"
    var requestStory = "Home"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        replacev()
        homeBtn.isSelected = true

        
    }
    
    @objc func replacev(){
        ViewEmbedder.embed(
            withIdentifier: requestID,
            parent: self,
            container: self.container,requestStory)
    }
    
    
    
    
    @IBAction func btnPressed(_ sender: UIButton!){
        
        
        if let lastbtnPressed:UIButton = view.viewWithTag(lastSender) as? UIButton{
            lastbtnPressed.isSelected = false
        }
        
        
        switch sender.tag {
        case 1:
            requestID = "home"
            replacev()
            homeBtn.isSelected = true
            break
        case 2:
            requestID = "notification"
            replacev()
            notificationBtn.isSelected = true
            break
        case 3:
            requestID = "search"
            replacev()
            searchBtn.isSelected = true
            break
        case 4:
            requestID = "document"
            replacev()
            docsBtn.isSelected = true
            break
        case 5:
            requestID = "category"
            replacev()
            categoryBtn.isSelected = true
            break
        default:
            break
        }
        
        lastSender = sender.tag
        
    }
    

}
