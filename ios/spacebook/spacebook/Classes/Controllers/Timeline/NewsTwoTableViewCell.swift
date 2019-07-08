//
//  NewsTwoTableViewCell.swift
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

class NewsTwoTableViewCell: UITableViewCell {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    @IBOutlet weak var theGoodOldTimesLabel: UILabel!
    @IBOutlet weak var today145PmLabel: UILabel!
    @IBOutlet weak var varthDader3kLikLabel: UILabel!
    @IBOutlet weak var commentsDisabledByLabel: UILabel!
    @IBOutlet weak var raidersFromTheGemLabel: UILabel!


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
        
        // Setup theGoodOldTimesLabel
        
        // Setup today145PmLabel
        
        // Setup varthDader3kLikLabel
        
        // Setup commentsDisabledByLabel
        
        // Setup raidersFromTheGemLabel
        let raidersFromTheGemLabelAttrString = NSMutableAttributedString(string: "Raiders from the Gemini Cluster are attacking colonial trader ships. When will the Federation step in?", attributes: [
            .font : UIFont(name: "Lato-Regular", size: 14)!,
            .foregroundColor : UIColor(red: 0.03, green: 0.03, blue: 0.03, alpha: 1),
            .kern : 0,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .left, lineHeight: 20, paragraphSpacing: 0)
        ])
        self.raidersFromTheGemLabel.attributedText = raidersFromTheGemLabelAttrString
        
    }

    private func setupLocalization()  {
        
        // Components
        self.theGoodOldTimesLabel.text = NSLocalizedString("NewsTwoTableViewCell.theGoodOldTimesLabel", comment: "")
        self.today145PmLabel.text = NSLocalizedString("NewsTwoTableViewCell.today145PmLabel", comment: "")
        self.varthDader3kLikLabel.text = NSLocalizedString("NewsTwoTableViewCell.varthDader3kLikLabel", comment: "")
        self.commentsDisabledByLabel.text = NSLocalizedString("NewsTwoTableViewCell.commentsDisabledByLabel", comment: "")
        self.raidersFromTheGemLabel.replaceAttributedStringText(withLocalizedText: NSLocalizedString("NewsTwoTableViewCell.raidersFromTheGemLabel", comment: ""))
    }
}
