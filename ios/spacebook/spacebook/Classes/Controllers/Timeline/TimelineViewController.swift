//
//  TimelineViewController.swift
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

class TimelineViewController: UIViewController {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    @IBOutlet weak var timelineTableView: UITableView!


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
        // Setup timelineTableView
        self.timelineTableView.separatorStyle = .none
        
    }

    private func setupUI()  {
        // Hide the back button
        self.navigationItem.hidesBackButton = true
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.navigationItem.title = "What's up?"
    }

    private func setupGestureRecognizers()  {
    
    }

    private func setupLocalization()  {
        // Navigation
        self.navigationItem.title = NSLocalizedString("TimelineViewController.navigationBarTitle", comment: "")
        
        
        // Tabbar
        self.tabBarItem.title = NSLocalizedString("Timeline.tabBarTitle", comment: "")
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


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Extension TimelineViewController

extension TimelineViewController: UITableViewDataSource  {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Methods
    func numberOfSections(in tableView: UITableView) -> Int  {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int  {
        return 15
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell  {
        if (0..<3).contains(indexPath.row) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "NewsTableViewCell", for: indexPath)
            self.configure(newsTableViewCell: cell, atIndexPath: indexPath)
            return cell
        }
        else if (3..<6).contains(indexPath.row) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "LifetimeEventTableViewCell", for: indexPath)
            self.configure(lifetimeEventTableViewCell: cell, atIndexPath: indexPath)
            return cell
        }
        else if (6..<9).contains(indexPath.row) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "NewsTwoTableViewCell", for: indexPath)
            self.configure(newsTwoTableViewCell: cell, atIndexPath: indexPath)
            return cell
        }
        else if (9..<12).contains(indexPath.row) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "EventTableViewCell", for: indexPath)
            self.configure(eventTableViewCell: cell, atIndexPath: indexPath)
            return cell
        }
        else if (12..<15).contains(indexPath.row) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "AdvertisementTableViewCell", for: indexPath)
            self.configure(advertisementTableViewCell: cell, atIndexPath: indexPath)
            return cell
        }
        
        assertionFailure("Did not obtain cell")
        return UITableViewCell()
    }

    public func configure(newsTableViewCell cell: UITableViewCell, atIndexPath indexPath: IndexPath)  {
        // Further configure cell
    }

    public func configure(lifetimeEventTableViewCell cell: UITableViewCell, atIndexPath indexPath: IndexPath)  {
        // Further configure cell
    }

    public func configure(newsTwoTableViewCell cell: UITableViewCell, atIndexPath indexPath: IndexPath)  {
        // Further configure cell
    }

    public func configure(eventTableViewCell cell: UITableViewCell, atIndexPath indexPath: IndexPath)  {
        // Further configure cell
    }

    public func configure(advertisementTableViewCell cell: UITableViewCell, atIndexPath indexPath: IndexPath)  {
        // Further configure cell
    }
}


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Extension TimelineViewController

extension TimelineViewController: UITableViewDelegate  {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Methods
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)  {
        print("Row selected at index \(indexPath)")
        if indexPath.row % 5 == 0 {
            self.performSegue(withIdentifier: "Push Event detail", sender: nil)
        }
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat  {
        if (0..<3).contains(indexPath.row) {
            return 419
        }
        else if (3..<6).contains(indexPath.row) {
            return 196
        }
        else if (6..<9).contains(indexPath.row) {
            return 470
        }
        else if (9..<12).contains(indexPath.row) {
            return 336
        }
        else if (12..<15).contains(indexPath.row) {
            return 123
        }
        
        return 0
    }
}
