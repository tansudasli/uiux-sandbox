//
//  AdvertisementTableViewCell.swift
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

class AdvertisementTableViewCell: UITableViewCell {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    @IBOutlet weak var hullTattoosANewLabel: UILabel!
    @IBOutlet weak var sponsoredContentLabel: UILabel!
    @IBOutlet weak var sprayAndPrayLabel: UILabel!


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
        
        // Setup hullTattoosANewLabel
        
        // Setup sponsoredContentLabel
        
        // Setup sprayAndPrayLabel
        let sprayAndPrayLabelAttrString = NSMutableAttributedString(string: "Spray and Pray", attributes: [
            .font : UIFont(name: "Lato-Bold", size: 14)!,
            .foregroundColor : UIColor(red: 0.85, green: 0.4, blue: 0.43, alpha: 1),
            .kern : 0,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .left, lineHeight: 20, paragraphSpacing: 0)
        ])
        self.sprayAndPrayLabel.attributedText = sprayAndPrayLabelAttrString
        
    }

    private func setupLocalization()  {
        
        // Components
        self.hullTattoosANewLabel.text = NSLocalizedString("AdvertisementTableViewCell.hullTattoosANewLabel", comment: "")
        self.sponsoredContentLabel.text = NSLocalizedString("AdvertisementTableViewCell.sponsoredContentLabel", comment: "")
        self.sprayAndPrayLabel.replaceAttributedStringText(withLocalizedText: NSLocalizedString("AdvertisementTableViewCell.sprayAndPrayLabel", comment: ""))
    }
}
