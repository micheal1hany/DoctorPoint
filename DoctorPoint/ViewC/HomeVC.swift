//
//  HomeVC.swift
//  DoctorPoint
//
//  Created by Micheal Hany on 5/13/22.
//

import UIKit

class HomeVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var userFirstName: UILabel!
    
    @IBOutlet weak var specialityCollectionView: UICollectionView!
    @IBOutlet weak var offersBannerCollectionView: UICollectionView!
    @IBOutlet weak var topDoctorsCollectionView: UICollectionView!
    
    let specialistVM = SpecialityViewModel()
    let loginVM = LoginViewModel()
    let offersVM = OffersViewModel()
    let topDoctorsVM = DoctorsViewModel()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        specialityCollectionView.delegate = self
        specialityCollectionView.dataSource = self
        
        offersBannerCollectionView.delegate = self
        offersBannerCollectionView.dataSource = self
        
        topDoctorsCollectionView.delegate = self
        topDoctorsCollectionView.dataSource = self
        
        getUserData()
        setBinders()
        
        initHideKeyboard()
        
    }
    
    func setBinders(){
        
        loginVM.userData.bind { (u) in
            if let user = u{
                self.userFirstName.text?.append(user.name)
            }
        }
        
    }
    
    func getUserData(){
        loginVM.getUserData()
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.specialityCollectionView{
            return specialistVM.specialityCells.count
        }else if collectionView == topDoctorsCollectionView{
            return topDoctorsVM.doctors.count
        }else{
            return offersVM.offersCells.count
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == specialityCollectionView{
            let cell = specialityCollectionView.dequeueReusableCell(withReuseIdentifier: "specialistCollectionViewCell", for: indexPath) as! SpecialistCollectionViewCell
            cell.setup(specialistVM.specialityCells[indexPath.row])
            return cell
        }else if collectionView == offersBannerCollectionView{
            let cell = offersBannerCollectionView.dequeueReusableCell(withReuseIdentifier: "offerBannerCollectionViewCell", for: indexPath) as! OfferBannerCollectionViewCell
            cell.setup(offersVM.offersCells[indexPath.row])
            return cell
        }else{
            let cell = topDoctorsCollectionView.dequeueReusableCell(withReuseIdentifier: "topDoctorsCollectionViewCell", for: indexPath) as! TopDoctorsCollectionViewCell
            cell.setup(topDoctorsVM.doctors[indexPath.row])
            return cell
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == specialityCollectionView{
            return CGSize(width: 90, height: 132)
        }else if collectionView == offersBannerCollectionView{
            return CGSize(width: 287, height: 121)
        }else{
            return CGSize(width: 130, height: 188)
        }
        
    }
    


}
