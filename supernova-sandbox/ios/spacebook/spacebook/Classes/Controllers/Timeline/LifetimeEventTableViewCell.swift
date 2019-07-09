//
//  LifetimeEventTableViewCell.swift
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

class LifetimeEventTableViewCell: UITableViewCell {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    @IBOutlet weak var plutoPostedANewLLabel: UILabel!
    @IBOutlet weak var inAComplicatedRelLabel: UILabel!


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Setup

    override public func awakeFromNib()  {
        // Configure SN Generated code
        super.awakeFromNib()
        
        self.setupComponents()
    }

    private func setupComponents()  {
        // Selection
        self.selectedBackgroundView = UIView()
        self.selectedBackgroundView?.backgroundColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1) /* #D9D9D9 */
        
        // Setup plutoPostedANewLLabel
        
        // Setup inAComplicatedRelLabel
        
    }

    private func setupLocalization()  {
        
        // Components
        self.plutoPostedANewLLabel.text = NSLocalizedString("LifetimeEventTableViewCell.plutoPostedANewLLabel", comment: "")
        self.inAComplicatedRelLabel.text = NSLocalizedString("LifetimeEventTableViewCell.inAComplicatedRelLabel", comment: "")
    }
}
