//
//  ProfileSettingsViewController.swift
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

class ProfileSettingsViewController: UIViewController {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var labelLabel: UILabel!
    @IBOutlet weak var textTwoLabel: UILabel!
    @IBOutlet weak var labelTwoLabel: UILabel!
    @IBOutlet weak var textThreeLabel: UILabel!
    @IBOutlet weak var labelThreeLabel: UILabel!
    @IBOutlet weak var labelFourLabel: UILabel!
    @IBOutlet weak var textFourLabel: UILabel!
    @IBOutlet weak var labelFiveLabel: UILabel!
    @IBOutlet weak var detailsLabel: UILabel!
    @IBOutlet weak var informationLabel: UILabel!
    @IBOutlet weak var labelSixLabel: UILabel!
    @IBOutlet weak var slideSwitch: UISwitch!
    var backBarButtonItem: UIBarButtonItem!


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
        // Setup textLabel
        
        // Setup labelLabel
        
        // Setup textTwoLabel
        
        // Setup labelTwoLabel
        
        // Setup textThreeLabel
        
        // Setup labelThreeLabel
        
        // Setup labelFourLabel
        
        // Setup textFourLabel
        
        // Setup labelFiveLabel
        
        // Setup detailsLabel
        let detailsLabelAttrString = NSMutableAttributedString(string: "DETAILS", attributes: [
            .font : UIFont(name: "Lato-Regular", size: 12)!,
            .foregroundColor : UIColor(red: 0, green: 0, blue: 0, alpha: 1),
            .kern : -0.07,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .left, lineHeight: nil, paragraphSpacing: 0)
        ])
        self.detailsLabel.attributedText = detailsLabelAttrString
        
        // Setup informationLabel
        let informationLabelAttrString = NSMutableAttributedString(string: "INFORMATION", attributes: [
            .font : UIFont(name: "Lato-Regular", size: 12)!,
            .foregroundColor : UIColor(red: 0, green: 0, blue: 0, alpha: 1),
            .kern : -0.07,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .left, lineHeight: nil, paragraphSpacing: 0)
        ])
        self.informationLabel.attributedText = informationLabelAttrString
        
        // Setup labelSixLabel
        
        // Setup slideSwitch
        self.slideSwitch.layer.cornerRadius = 16
        self.slideSwitch.layer.masksToBounds = true
        
    }

    private func setupUI()  {
        // Hide the back button
        self.navigationItem.hidesBackButton = true
        // Left navigation items
        self.backBarButtonItem = UIBarButtonItem(image: UIImage(named: "group-2"), style: .plain, target: self, action: #selector(self.onGroupPressed(_:)))
        self.navigationItem.leftBarButtonItems = [ self.backBarButtonItem ]
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.navigationItem.title = "Dr. Where settings"
    }

    private func setupGestureRecognizers()  {
    
    }

    private func setupLocalization()  {
        // Navigation
        self.navigationItem.title = NSLocalizedString("ProfileSettingsViewController.navigationBarTitle", comment: "")
        
        self.backBarButtonItem.title = NSLocalizedString("ProfileSettings.backBarButtonItem", comment: "")
        
        // Components
        self.textLabel.text = NSLocalizedString("ProfileSettings.textLabel", comment: "")
        self.labelLabel.text = NSLocalizedString("ProfileSettings.labelLabel", comment: "")
        self.textTwoLabel.text = NSLocalizedString("ProfileSettings.textTwoLabel", comment: "")
        self.labelTwoLabel.text = NSLocalizedString("ProfileSettings.labelTwoLabel", comment: "")
        self.textThreeLabel.text = NSLocalizedString("ProfileSettings.textThreeLabel", comment: "")
        self.labelThreeLabel.text = NSLocalizedString("ProfileSettings.labelThreeLabel", comment: "")
        self.labelFourLabel.text = NSLocalizedString("ProfileSettings.labelFourLabel", comment: "")
        self.textFourLabel.text = NSLocalizedString("ProfileSettings.textFourLabel", comment: "")
        self.labelFiveLabel.text = NSLocalizedString("ProfileSettings.labelFiveLabel", comment: "")
        self.detailsLabel.replaceAttributedStringText(withLocalizedText: NSLocalizedString("ProfileSettings.detailsLabel", comment: ""))
        self.informationLabel.replaceAttributedStringText(withLocalizedText: NSLocalizedString("ProfileSettings.informationLabel", comment: ""))
        self.labelSixLabel.text = NSLocalizedString("ProfileSettings.labelSixLabel", comment: "")
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

    @IBAction public func onGroupPressed(_ sender: UIView)  {
        // Pop the navigation stack or dismiss the modal presentation
        if let navigationController = self.navigationController, navigationController.viewControllers.first != self {
            navigationController.popViewController(animated: true)
        } else if self.presentingViewController != nil {
            self.dismiss(animated: true, completion: nil)
        }
    }

    @IBAction public func onSlideValueChanged(_ sender: UISwitch)  {
    
    }
}
