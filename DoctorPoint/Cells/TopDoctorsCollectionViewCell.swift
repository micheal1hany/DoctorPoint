//
//  TopDoctorsCollectionViewCell.swift
//  DoctorPoint
//
//  Created by Micheal Hany on 7/29/22.
//

import UIKit

class TopDoctorsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var drImg: UIImageView!
    @IBOutlet weak var drName: UILabel!
    @IBOutlet weak var drSpeciality: UILabel!
    
    func setup(_ cell:Doctor){
        drImg.image = cell.picture
        drName.text = cell.name
        drSpeciality.text = cell.speciality
    }
}
