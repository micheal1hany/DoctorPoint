//
//  OfferBannerCollectionViewCell.swift
//  DoctorPoint
//
//  Created by Micheal Hany on 7/29/22.
//

import UIKit

class OfferBannerCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    
    
    func setup(_ cell:Offers){
        titleLbl.text = cell.title
        descriptionLbl.text = cell.description
        priceLbl.text = String("$" + cell.price)
    }
}
