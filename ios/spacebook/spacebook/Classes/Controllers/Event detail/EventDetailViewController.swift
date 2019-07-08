//
//  EventDetailViewController.swift
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

class EventDetailViewController: UIViewController {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    @IBOutlet weak var guessWhoSBackLabel: UILabel!
    @IBOutlet weak var happeningIn20hBaLabel: UILabel!
    @IBOutlet weak var eventPostedByLaikLabel: UILabel!
    @IBOutlet weak var comingLabel: UILabel!
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
        // Setup guessWhoSBackLabel
        
        // Setup happeningIn20hBaLabel
        
        // Setup eventPostedByLaikLabel
        
        // Setup comingLabel
        
    }

    private func setupUI()  {
        // Hide the back button
        self.navigationItem.hidesBackButton = true
        // Left navigation items
        self.backBarButtonItem = UIBarButtonItem(image: UIImage(named: "group-2"), style: .plain, target: self, action: #selector(self.onGroupPressed(_:)))
        self.navigationItem.leftBarButtonItems = [ self.backBarButtonItem ]
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.navigationItem.title = "Guess who's back?"
    }

    private func setupGestureRecognizers()  {
    
    }

    private func setupLocalization()  {
        // Navigation
        self.navigationItem.title = NSLocalizedString("EventDetailViewController.navigationBarTitle", comment: "")
        
        self.backBarButtonItem.title = NSLocalizedString("EventDetail.backBarButtonItem", comment: "")
        
        // Components
        self.guessWhoSBackLabel.text = NSLocalizedString("EventDetail.guessWhoSBackLabel", comment: "")
        self.happeningIn20hBaLabel.text = NSLocalizedString("EventDetail.happeningIn20hBaLabel", comment: "")
        self.eventPostedByLaikLabel.text = NSLocalizedString("EventDetail.eventPostedByLaikLabel", comment: "")
        self.comingLabel.text = NSLocalizedString("EventDetail.comingLabel", comment: "")
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
}
