//
//  ViewEmbedder.swift
//  DoctorPoint
//
//  Created by Micheal Hany on 5/13/22.

import UIKit

class ViewEmbedder {
    class func embed(
        parent:UIViewController,
        container:UIView,
        child:UIViewController,
        previous:UIViewController?){
        
//        if let previous = previous  {
//            removeFromParent(vc: previous)
//        }
        child.willMove(toParent: parent)
        parent.addChild(child)
        container.addSubview(child.view)
        child.beginAppearanceTransition(true, animated: true)
        child.didMove(toParent: parent)
        let w = container.frame.size.width;
        let h = container.frame.size.height;
        child.view.frame = CGRect(x: 0, y: 0, width: w, height: h)
    }
    
//    class func removeFromParent(vc:UIViewController){
//       if (vc.className != "hdrMenuC"){
//            vc.willMove(toParent: nil)
//            vc.view.removeFromSuperview()
//            vc.removeFromParent()
//        }
//    }
    
    class func embed(withIdentifier id:String, parent:UIViewController, container:UIView,_ story:String = "Home"){
        let storyboard = UIStoryboard(name: story, bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: id)
        embed(
            parent: parent,
            container: container,
            child: vc,
            previous: parent.children.first
        )
    }
}
