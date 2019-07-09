//
//  NewsTableViewCell.swift
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

class NewsTableViewCell: UITableViewCell {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    @IBOutlet weak var spacecrunchLabel: UILabel!
    @IBOutlet weak var today145PmLabel: UILabel!
    @IBOutlet weak var spacewoman185kLiLabel: UILabel!
    @IBOutlet weak var kCommentsLabel: UILabel!
    @IBOutlet weak var melonHuskLaunchesLabel: UILabel!


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
        
        // Setup spacecrunchLabel
        
        // Setup today145PmLabel
        
        // Setup spacewoman185kLiLabel
        
        // Setup kCommentsLabel
        
        // Setup melonHuskLaunchesLabel
        let melonHuskLaunchesLabelAttrString = NSMutableAttributedString(string: "Melon Husk launches the first car that can travel a galaxy on a single tank of gas.", attributes: [
            .font : UIFont(name: "Lato-Regular", size: 14)!,
            .foregroundColor : UIColor(red: 0.03, green: 0.03, blue: 0.03, alpha: 1),
            .kern : 0,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .left, lineHeight: 20, paragraphSpacing: 0)
        ])
        self.melonHuskLaunchesLabel.attributedText = melonHuskLaunchesLabelAttrString
        
    }

    private func setupLocalization()  {
        
        // Components
        self.spacecrunchLabel.text = NSLocalizedString("NewsTableViewCell.spacecrunchLabel", comment: "")
        self.today145PmLabel.text = NSLocalizedString("NewsTableViewCell.today145PmLabel", comment: "")
        self.spacewoman185kLiLabel.text = NSLocalizedString("NewsTableViewCell.spacewoman185kLiLabel", comment: "")
        self.kCommentsLabel.text = NSLocalizedString("NewsTableViewCell.kCommentsLabel", comment: "")
        self.melonHuskLaunchesLabel.replaceAttributedStringText(withLocalizedText: NSLocalizedString("NewsTableViewCell.melonHuskLaunchesLabel", comment: ""))
    }
}
