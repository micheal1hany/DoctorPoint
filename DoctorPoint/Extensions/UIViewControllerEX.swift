//
//  UIViewControllerEX.swift
//  DoctorPoint
//
//  Created by Micheal Hany on 5/11/22.
//

import UIKit

extension UIViewController{
    
    func initHideKeyboard(){
        let tap = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(tap)
        
    }
    
    @objc func hideKeyboard(){
        view.endEditing(true)
    }
    
    func navigate(_ story:String = "Main", screenID:String){
        
        let story = UIStoryboard(name: story, bundle: nil)
        let screen = story.instantiateViewController(identifier: screenID)
        navigationController?.pushViewController(screen, animated: true)
    }
    
    func popVC(){
        navigationController?.popViewController(animated: true)
    }
}

extension UIButton{

    
    @IBInspectable var borderWidth:CGFloat{
        
        get{
            return 0
        }
        set(value){
            self.layer.borderWidth = value
        }
    }
    
    @IBInspectable var borderColor:UIColor?{
        
        get{
            return UIColor(cgColor: UIColor.clear.cgColor)
        }
        set(value){
            self.layer.borderColor = value?.cgColor ?? UIColor.clear.cgColor
        }
    }
}

extension UITextField{
    
    @IBInspectable var underLine:Bool{

        get{
            return false
        }

        set(value){
            let bottomLine = CALayer()
            bottomLine.frame = CGRect(x: 0, y: self.frame.height - 1, width: self.frame.width, height: 1.0)
            bottomLine.backgroundColor = UIColor.gray.cgColor
            self.borderStyle = BorderStyle.none
            self.layer.addSublayer(bottomLine)
        }
    }
    
    @IBInspectable var startimage:UIImage{

        get{
            return disabledBackground!
        }

        set(value){
            let leftImageView = UIImageView(frame: CGRect(x: 0.0, y: 0.0, width: value.size.width + 5, height: value.size.height))
            leftImageView.image = value
            self.leftView = leftImageView
            self.leftViewMode = .always

        }
    }
    
     
}

extension UIView{
    
    @IBInspectable var cornerRadius:CGFloat{
        get{
            return 0
        }
        set{
            self.layer.cornerRadius = newValue
        }
    }
}
