//
//  OnBoardingVC.swift
//  DoctorPoint
//
//  Created by Micheal Hany on 5/11/22.
//

import UIKit

class OnBoardingVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var skipLbl: UILabel!
    
    
    
    var slides: [OnboardingSlide] = []
    
    var currentPage = 0{
        didSet{
            pageControl.currentPage = currentPage
            if currentPage == slides.count - 1{
                nextBtn.setTitle("Get Started", for: .normal)
                skipLbl.isHidden = true
            }else{
                nextBtn.setTitle("Next", for: .normal)
                skipLbl.isHidden = false
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        slides = [OnboardingSlide(title: "Thousands of doctors", description: "Access thousands of Doctors instantly. You can easily contact with the doctors and contact for your needs.", image: #imageLiteral(resourceName: "onboardimg1")), OnboardingSlide(title: "Live talk with doctor", description: "Easily connect with doctor and start video chat for your better treatment & Prescription.", image: #imageLiteral(resourceName: "onboardimg2")), OnboardingSlide(title: "Chat with doctors", description: "Book an appointment with doctor. Chat with doctor via appointment letter. Get consultent.", image: #imageLiteral(resourceName: "onboardimg3"))]
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(skipForNowLbl(sender:)))
        skipLbl.addGestureRecognizer(tap)
        skipLbl.isUserInteractionEnabled = true
        

        
    }
    

    @IBAction func nextBtn(_ sender: Any) {
        
        if currentPage == slides.count - 1{
            navigate(screenID: "landing")
        }else{
            currentPage += 1
            let indexPath = IndexPath(item: currentPage, section: 0)
            collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        }
        
        
        
    }
    
    @objc func skipForNowLbl(sender:UITapGestureRecognizer){
        navigate(screenID: "landing")
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OnboardingCollectionViewCell.ID, for: indexPath) as! OnboardingCollectionViewCell
        cell.setup(slides[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = scrollView.frame.width
        currentPage = Int(scrollView.contentOffset.x / width)
        
    }
    
}
