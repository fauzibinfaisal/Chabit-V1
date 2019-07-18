//
//  OnBoardingViewController.swift
//  ChabitApp
//
//  Created by Pramahadi Tama Putra on 17/07/19.
//  Copyright © 2019 C2G10. All rights reserved.
//

import UIKit
import paper_onboarding

class OnBoardingViewController: UIViewController, PaperOnboardingDataSource, PaperOnboardingDelegate {

    @IBOutlet weak var skipButton: UIButton!
    
    @IBOutlet weak var onBoardingView: PaperOnboarding!
    
    var fontName: String = "Avenir"
    //    @IBOutlet weak var onBoardingView: PaperOnboarding!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupOnBoardingPaperView()
        skipButton.alpha = 0
        skipButton.layer.cornerRadius = 10
        skipButton.tintColor = #colorLiteral(red: 0.09019607843, green: 0.7176470588, blue: 0.831372549, alpha: 1)
        skipButton.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        onBoardingView.bringSubviewToFront(skipButton)
    }
    
    fileprivate func setupOnBoardingPaperView() {
        // Do any additional setup after loading the view.
        
        onBoardingView.dataSource = self
        onBoardingView.delegate = self
        onBoardingView.translatesAutoresizingMaskIntoConstraints = true
        
        
        //         add constraints
        for attribute: NSLayoutConstraint.Attribute in [.left, .right, .top, .bottom] {
            let constraint = NSLayoutConstraint(item: onBoardingView,
                                                attribute: attribute,
                                                relatedBy: .equal,
                                                toItem: view,
                                                attribute: attribute,
                                                multiplier: 1,
                                                constant: 0)
            view.addConstraint(constraint)
        }
    }
    
    
    func onboardingItem(at index: Int) -> OnboardingItemInfo {
        
        
        return [
            
            OnboardingItemInfo(informationImage: UIImage(named: "Logo")!,
                               title: "Welcome to CHABIT!",
                               description: "",
                               pageIcon: UIImage(named: "Logo")!,
                               color: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1),
                               titleColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1),
                               descriptionColor: #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1),
                               titleFont: UIFont(name: fontName, size: 25)!,
                               descriptionFont: UIFont(name: fontName, size: 0)!
            ),
            
            OnboardingItemInfo(informationImage: UIImage(named: "books")!,
                               title: "Create good habbit from our suggestion activity",
                               description: "",
                               pageIcon: UIImage(named: "books")!,
                               color: #colorLiteral(red: 0.09019607843, green: 0.7176470588, blue: 0.831372549, alpha: 1),
                               titleColor: #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1),
                               descriptionColor: #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1),
                               titleFont: UIFont(name: fontName, size: 25)!,
                               descriptionFont: UIFont(name: fontName, size: 0)!
            ),
            
            OnboardingItemInfo(informationImage: UIImage(named: "heart-rate")!,
                               title: "Knowing your emotional condition by HRV",
                               description: "",
                               pageIcon: UIImage(named: "heart-rate")!,
                               color: #colorLiteral(red: 0.09019607843, green: 0.7176470588, blue: 0.831372549, alpha: 1),
                               titleColor: #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1),
                               descriptionColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1),
                               titleFont: UIFont(name: fontName, size: 25)!,
                               descriptionFont: UIFont(name: fontName, size: 0)!
            ),
            
            OnboardingItemInfo(informationImage: UIImage(named: "notification")!,
                               title: "Get instant reminder notification",
                               description: "",
                               pageIcon: UIImage(named: "notification")!,
                               color: #colorLiteral(red: 0.09019607843, green: 0.7176470588, blue: 0.831372549, alpha: 1),
                               titleColor: #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1),
                               descriptionColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1),
                               titleFont: UIFont(name: fontName, size: 25)!,
                               descriptionFont: UIFont(name: fontName, size: 0)!
            ),
            
            OnboardingItemInfo(informationImage: UIImage(named: "hiker")!,
                               title: "Lets start your journey to build good habit!",
                               description: "",
                               pageIcon: UIImage(named: "hiker")!,
                               color: #colorLiteral(red: 0.09019607843, green: 0.7176470588, blue: 0.831372549, alpha: 1),
                               titleColor: #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1),
                               descriptionColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1),
                               titleFont: UIFont(name: fontName, size: 25)!,
                               descriptionFont: UIFont(name: fontName, size: 0)!
            ),
            
            
            ][index]
        
    }
    
    func onboardingItemsCount() -> Int {
        return 5
    }
    
    func onboardingConfigurationItem(item: OnboardingContentViewItem, index: Int) {
    }
    
    func onboardingWillTransitonToIndex(_ index: Int) {
        if index == 3 {
            UIView.animate(withDuration: 0.4) {
                self.skipButton.alpha = 0
            }
        }
    }
    
    func onboardingDidTransitonToIndex(_ index: Int) {
        if index == 4 {
            UIView.animate(withDuration: 0.4) {
                self.skipButton.alpha = 1
            }
        }
    }

}
