//
//  SpecialistCollectionViewCell.swift
//  DoctorPoint
//
//  Created by Micheal Hany on 7/28/22.
//

import UIKit

class SpecialistCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var specImage: UIImageView!
    @IBOutlet weak var specLbl: UILabel!
    @IBOutlet weak var doctorsCountLbl: UILabel!
    @IBOutlet weak var cellBG: UIView!
    
    func setup(_ cell:Speciality){
        specImage.image = cell.image
        specLbl.text = cell.title
        doctorsCountLbl.text = String(cell.count) + " Doctors"
        cellBG.backgroundColor = cell.bgColor
    }
}
