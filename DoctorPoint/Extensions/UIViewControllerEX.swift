//
//  UIViewControllerEX.swift
//  DoctorPoint
//
//  Created by Micheal Hany on 5/11/22.
//

import UIKit

extension UIViewController{
    
    func alert(_ msg:String){
        let alert = UIAlertController(title: "Alert", message: msg, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Try Again", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
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
    
    @IBInspectable var tfCorners:CGFloat{
        get{
            return 0
        }
        set{
            self.borderStyle = .none
            self.layer.cornerRadius = newValue
            self.layer.borderWidth = 1
            self.layer.borderColor = UIColor(named: "font2")?.withAlphaComponent(0.2).cgColor
            
        }
    }
    
    @IBInspectable var leftPadding:CGFloat{
        get{
            return 0
        }
        set{
            let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: newValue, height: self.frame.size.height))
            self.leftView = paddingView
            self.leftViewMode = .always
        }
    }
    
    @IBInspectable var rightPadding:CGFloat{
        get{
            return 0
        }
        set{
            let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: newValue, height: self.frame.size.height))
            self.rightView = paddingView
            self.rightViewMode = .always
        }
    }
    
    @IBInspectable var startImage:UIImage{

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
    
    @IBInspectable var endImage:UIImage{

        get{
            return disabledBackground!
        }
        
        set(value){
            let rightImageView = UIImageView(frame: CGRect(x: -20, y: 0, width: 20, height: 20))
            rightImageView.image = value
            let contentView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
            contentView.addSubview(rightImageView)
            
            self.rightView = contentView
            self.rightViewMode = .always
        }
        
    }
    
     
}

extension CACornerMask{
    static let bottomLeft = CACornerMask.layerMinXMaxYCorner
    static let bottomRight = CACornerMask.layerMaxXMaxYCorner
    static let topLeft = CACornerMask.layerMinXMinYCorner
    static let topRight = CACornerMask.layerMaxXMinYCorner
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
    
    @IBInspectable var maskedCorners:Bool{
        get{
            return false
        }
        set(value){
            self.layer.maskedCorners = [.bottomLeft, .topRight]
        }
    }
    
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
