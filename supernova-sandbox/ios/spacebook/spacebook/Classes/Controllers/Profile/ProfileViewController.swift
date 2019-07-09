//
//  ProfileViewController.swift
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

class ProfileViewController: UIViewController {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    @IBOutlet weak var avatarTempButton: SupernovaButton!
    @IBOutlet weak var phoneBoothAndroLabel: UILabel!
    @IBOutlet weak var drWhatLabel: UILabel!
    @IBOutlet weak var travelerDreamerLabel: UILabel!
    @IBOutlet weak var stalkingLabel: UILabel!
    @IBOutlet weak var labelLabel: UILabel!
    @IBOutlet weak var stalkersLabel: UILabel!
    @IBOutlet weak var kLabel: UILabel!
    @IBOutlet weak var photosLabel: UILabel!
    @IBOutlet weak var labelTwoLabel: UILabel!
    @IBOutlet weak var galleryCollectionView: UICollectionView!
    var settingsBarButtonItem: UIBarButtonItem!


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
        // Setup avatarTempButton
        self.avatarTempButton.snImageTextSpacing = 10
        
        // Setup phoneBoothAndroLabel
        
        // Setup drWhatLabel
        let drWhatLabelAttrString = NSMutableAttributedString(string: "Dr. What", attributes: [
            .font : UIFont(name: "Lato-Regular", size: 26)!,
            .foregroundColor : UIColor(red: 0.02, green: 0.05, blue: 0.09, alpha: 1),
            .kern : 0,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .center, lineHeight: 32, paragraphSpacing: 0)
        ])
        self.drWhatLabel.attributedText = drWhatLabelAttrString
        
        // Setup travelerDreamerLabel
        let travelerDreamerLabelAttrString = NSMutableAttributedString(string: "Traveler, dreamer, showman. Occasionally gets into fight, not always survives.", attributes: [
            .font : UIFont(name: "Lato-Regular", size: 14)!,
            .foregroundColor : UIColor(red: 0, green: 0, blue: 0, alpha: 1),
            .kern : 0,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .center, lineHeight: 20, paragraphSpacing: 0)
        ])
        self.travelerDreamerLabel.attributedText = travelerDreamerLabelAttrString
        
        // Setup stalkingLabel
        
        // Setup labelLabel
        
        // Setup stalkersLabel
        
        // Setup kLabel
        
        // Setup photosLabel
        
        // Setup labelTwoLabel
        
        // Setup galleryCollectionView
        
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
        
        // Right navigation items
        self.settingsBarButtonItem = UIBarButtonItem(title: "Settings", style: .plain, target: self, action: #selector(self.onLeftItemPressed(_:)))
        self.navigationItem.rightBarButtonItems = [ self.settingsBarButtonItem ]
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.navigationItem.title = "Dr. What Profile"
    }

    private func setupGestureRecognizers()  {
    
    }

    private func setupLocalization()  {
        // Navigation
        self.navigationItem.title = NSLocalizedString("ProfileViewController.navigationBarTitle", comment: "")
        
        self.settingsBarButtonItem.title = NSLocalizedString("Profile.settingsBarButtonItem", comment: "")
        
        // Tabbar
        self.tabBarItem.title = NSLocalizedString("Profile.tabBarTitle", comment: "")
        
        // Components
        self.avatarTempButton.setTitle(NSLocalizedString("Profile.avatarTempButton", comment: ""), for: .normal)
        self.phoneBoothAndroLabel.text = NSLocalizedString("Profile.phoneBoothAndroLabel", comment: "")
        self.drWhatLabel.replaceAttributedStringText(withLocalizedText: NSLocalizedString("Profile.drWhatLabel", comment: ""))
        self.travelerDreamerLabel.replaceAttributedStringText(withLocalizedText: NSLocalizedString("Profile.travelerDreamerLabel", comment: ""))
        self.stalkingLabel.text = NSLocalizedString("Profile.stalkingLabel", comment: "")
        self.labelLabel.text = NSLocalizedString("Profile.labelLabel", comment: "")
        self.stalkersLabel.text = NSLocalizedString("Profile.stalkersLabel", comment: "")
        self.kLabel.text = NSLocalizedString("Profile.kLabel", comment: "")
        self.photosLabel.text = NSLocalizedString("Profile.photosLabel", comment: "")
        self.labelTwoLabel.text = NSLocalizedString("Profile.labelTwoLabel", comment: "")
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Status Bar

    override public var prefersStatusBarHidden: Bool  {
        return false
    }

    override public var preferredStatusBarStyle: UIStatusBarStyle  {
        return .lightContent
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Actions

    @IBAction public func onLeftItemPressed(_ sender: UIView)  {
        self.performSegue(withIdentifier: "Push Profile Settings", sender: nil)
    }

    @IBAction public func onAvatarTempPressed(_ sender: UIButton)  {
        self.performSegue(withIdentifier: "Push Profile Photos", sender: nil)
    }
}


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Extension ProfileViewController

extension ProfileViewController: UICollectionViewDataSource  {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Methods
    func numberOfSections(in collectionView: UICollectionView) -> Int  {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int  {
        return 10
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell  {
        if (0..<4).contains(indexPath.row) {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellCollectionViewCell", for: indexPath)
            self.configure(cellCollectionViewCell: cell, atIndexPath: indexPath)
            return cell
        }
        else if (4..<7).contains(indexPath.row) {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellTwoCollectionViewCell", for: indexPath)
            self.configure(cellTwoCollectionViewCell: cell, atIndexPath: indexPath)
            return cell
        }
        else if (7..<10).contains(indexPath.row) {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellThreeCollectionViewCell", for: indexPath)
            self.configure(cellThreeCollectionViewCell: cell, atIndexPath: indexPath)
            return cell
        }
        
        assertionFailure("Did not obtain cell")
        return UICollectionViewCell()
    }

    public func configure(cellCollectionViewCell cell: UICollectionViewCell, atIndexPath indexPath: IndexPath)  {
        // Further configure cell
    }

    public func configure(cellTwoCollectionViewCell cell: UICollectionViewCell, atIndexPath indexPath: IndexPath)  {
        // Further configure cell
    }

    public func configure(cellThreeCollectionViewCell cell: UICollectionViewCell, atIndexPath indexPath: IndexPath)  {
        // Further configure cell
    }
}


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Extension ProfileViewController

extension ProfileViewController: UICollectionViewDelegate  {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Methods
    public func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)  {
        print("Item selected at index \(indexPath)")
    }
}


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Extension ProfileViewController

extension ProfileViewController: UICollectionViewDelegateFlowLayout  {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Methods
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize  {
        if (0..<4).contains(indexPath.row) {
            return CGSize(width: 100, height: 100)
        }
        else if (4..<7).contains(indexPath.row) {
            return CGSize(width: 100, height: 100)
        }
        else if (7..<10).contains(indexPath.row) {
            return CGSize(width: 100, height: 100)
        }
        
        return .zero
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat  {
        return 0
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat  {
        return 0
    }
}
