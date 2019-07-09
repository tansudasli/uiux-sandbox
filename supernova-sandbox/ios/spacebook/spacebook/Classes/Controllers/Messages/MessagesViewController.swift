//
//  MessagesViewController.swift
//  spacebook
//
//  Created by [Author].
//  Copyright © 2018 growthmonsters. All rights reserved.
//

// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Import

import UIKit


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Implementation

class MessagesViewController: UIViewController {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    @IBOutlet weak var mrsDoyaLabel: UILabel!
    @IBOutlet weak var jackLabel: UILabel!
    @IBOutlet weak var gideonLabel: UILabel!
    @IBOutlet weak var sarahScLabel: UILabel!
    @IBOutlet weak var vulcanLabel: UILabel!
    @IBOutlet weak var theNeedsOfTheFewLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var iMTellingYouTheLabel: UILabel!
    @IBOutlet weak var nameTwoLabel: UILabel!
    @IBOutlet weak var howDoYouGoToTheLabel: UILabel!
    @IBOutlet weak var nameThreeLabel: UILabel!
    @IBOutlet weak var theWaterSoTestyYLabel: UILabel!
    @IBOutlet weak var nameFourLabel: UILabel!
    @IBOutlet weak var finallyHavingADatLabel: UILabel!
    @IBOutlet weak var nameFiveLabel: UILabel!
    @IBOutlet weak var weVeBeenForcedToLabel: UILabel!
    @IBOutlet weak var nameSixLabel: UILabel!


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Lifecycle

    override public func viewDidLoad()  {
        super.viewDidLoad()
        self.setupComponents()
        self.setupUI()
        self.setupGestureRecognizers()
        self.setupLocalization()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override public func viewWillAppear(_ animated: Bool)  {
        super.viewWillAppear(animated)
        
        // Navigation bar, if any
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Setup

    private func setupComponents()  {
        // Setup mrsDoyaLabel
        
        // Setup jackLabel
        
        // Setup gideonLabel
        
        // Setup sarahScLabel
        
        // Setup vulcanLabel
        
        // Setup theNeedsOfTheFewLabel
        
        // Setup nameLabel
        
        // Setup iMTellingYouTheLabel
        
        // Setup nameTwoLabel
        
        // Setup howDoYouGoToTheLabel
        
        // Setup nameThreeLabel
        
        // Setup theWaterSoTestyYLabel
        
        // Setup nameFourLabel
        
        // Setup finallyHavingADatLabel
        
        // Setup nameFiveLabel
        
        // Setup weVeBeenForcedToLabel
        
        // Setup nameSixLabel
        
    }

    private func setupUI()  {
        let navigationBar = self.navigationController!.navigationBar
        let navigationGradient = CAGradientLayer()
        navigationGradient.frame = navigationBar.bounds
        navigationGradient.colors = [UIColor(red: 0.97, green: 0.52, blue: 0.38, alpha: 1).cgColor, UIColor(red: 0.54, green: 0.11, blue: 0.55, alpha: 1).cgColor]
        navigationGradient.locations = [0.000, 1.000]
        navigationGradient.startPoint = CGPoint(x: -0.014, y: 0.515)
        navigationGradient.endPoint = CGPoint(x: 1.014, y: 0.485)
        navigationBar.setBackgroundImage(UIImage.image(fromLayer: navigationGradient).resizableImage(withCapInsets: UIEdgeInsets.zero, resizingMode: .stretch), for: .default)
        
        navigationBar.tintColor = UIColor(red: 0.86, green: 0.84, blue: 0.31, alpha: 1)
        navigationBar.titleTextAttributes = [
            NSAttributedString.Key.font : UIFont(name: "Lato-Regular", size: 17)!,
            NSAttributedString.Key.foregroundColor : UIColor(red: 1, green: 1, blue: 1, alpha: 1),
        ]
        
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.navigationItem.title = "Messages"
    }

    private func setupGestureRecognizers()  {
    
    }

    private func setupLocalization()  {
        // Navigation
        self.navigationItem.title = NSLocalizedString("MessagesViewController.navigationBarTitle", comment: "")
        
        
        // Tabbar
        self.tabBarItem.title = NSLocalizedString("Messages.tabBarTitle", comment: "")
        
        // Components
        self.mrsDoyaLabel.text = NSLocalizedString("Messages.mrsDoyaLabel", comment: "")
        self.jackLabel.text = NSLocalizedString("Messages.jackLabel", comment: "")
        self.gideonLabel.text = NSLocalizedString("Messages.gideonLabel", comment: "")
        self.sarahScLabel.text = NSLocalizedString("Messages.sarahScLabel", comment: "")
        self.vulcanLabel.text = NSLocalizedString("Messages.vulcanLabel", comment: "")
        self.theNeedsOfTheFewLabel.text = NSLocalizedString("Messages.theNeedsOfTheFewLabel", comment: "")
        self.nameLabel.text = NSLocalizedString("Messages.nameLabel", comment: "")
        self.iMTellingYouTheLabel.text = NSLocalizedString("Messages.iMTellingYouTheLabel", comment: "")
        self.nameTwoLabel.text = NSLocalizedString("Messages.nameTwoLabel", comment: "")
        self.howDoYouGoToTheLabel.text = NSLocalizedString("Messages.howDoYouGoToTheLabel", comment: "")
        self.nameThreeLabel.text = NSLocalizedString("Messages.nameThreeLabel", comment: "")
        self.theWaterSoTestyYLabel.text = NSLocalizedString("Messages.theWaterSoTestyYLabel", comment: "")
        self.nameFourLabel.text = NSLocalizedString("Messages.nameFourLabel", comment: "")
        self.finallyHavingADatLabel.text = NSLocalizedString("Messages.finallyHavingADatLabel", comment: "")
        self.nameFiveLabel.text = NSLocalizedString("Messages.nameFiveLabel", comment: "")
        self.weVeBeenForcedToLabel.text = NSLocalizedString("Messages.weVeBeenForcedToLabel", comment: "")
        self.nameSixLabel.text = NSLocalizedString("Messages.nameSixLabel", comment: "")
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Status Bar

    override public var prefersStatusBarHidden: Bool  {
        return false
    }

    override public var preferredStatusBarStyle: UIStatusBarStyle  {
        return .lightContent
    }
}
