//
//  EventTableViewCell.swift
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

class EventTableViewCell: UITableViewCell {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    @IBOutlet weak var laikaCreatedANewLabel: UILabel!
    @IBOutlet weak var backFromTheSpaceLabel: UILabel!
    @IBOutlet weak var johnJoeAndJackLabel: UILabel!
    @IBOutlet weak var labelLabel: UILabel!
    @IBOutlet weak var guessWhoSBackLabel: SupernovaLabel!


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
        
        // Setup laikaCreatedANewLabel
        
        // Setup backFromTheSpaceLabel
        
        // Setup johnJoeAndJackLabel
        
        // Setup labelLabel
        
        // Setup guessWhoSBackLabel
        let guessWhoSBackLabelAttrString = NSMutableAttributedString(string: "Guess who’s back?", attributes: [
            .font : UIFont(name: ".SFNSDisplay", size: 24)!,
            .foregroundColor : UIColor(red: 1, green: 1, blue: 1, alpha: 1),
            .kern : 0,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .right, lineHeight: 24, paragraphSpacing: 0)
        ])
        self.guessWhoSBackLabel.attributedText = guessWhoSBackLabelAttrString
        
    }

    private func setupLocalization()  {
        
        // Components
        self.laikaCreatedANewLabel.text = NSLocalizedString("EventTableViewCell.laikaCreatedANewLabel", comment: "")
        self.backFromTheSpaceLabel.text = NSLocalizedString("EventTableViewCell.backFromTheSpaceLabel", comment: "")
        self.johnJoeAndJackLabel.text = NSLocalizedString("EventTableViewCell.johnJoeAndJackLabel", comment: "")
        self.labelLabel.text = NSLocalizedString("EventTableViewCell.labelLabel", comment: "")
        self.guessWhoSBackLabel.replaceAttributedStringText(withLocalizedText: NSLocalizedString("EventTableViewCell.guessWhoSBackLabel", comment: ""))
    }
}
