//
//  OnboardingCollectionViewCell.swift
//  DoctorPoint
//
//  Created by Micheal Hany on 5/12/22.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    
    static let ID = String(describing: OnboardingCollectionViewCell.self)
    
    @IBOutlet weak var slideImage: UIImageView!
    @IBOutlet weak var slideTitle: UILabel!
    @IBOutlet weak var slideDescreption: UILabel!
    
    
    func setup(_ slide: OnboardingSlide){
        
        slideImage.image = slide.image
        slideTitle.text = slide.title
        slideDescreption.text = slide.description
        
    }
    
}
