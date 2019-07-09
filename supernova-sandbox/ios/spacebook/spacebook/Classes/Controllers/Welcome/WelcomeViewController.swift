//
//  WelcomeViewController.swift
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

class WelcomeViewController: UIViewController {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    @IBOutlet weak var welcomeView: UIView!
    @IBOutlet weak var spacebookLabel: UILabel!
    @IBOutlet weak var conquerTheStarsLabel: UILabel!
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var logInButton: SupernovaButton!
    @IBOutlet weak var signUpButton: SupernovaButton!
    @IBOutlet weak var supernovaStuLabel: UILabel!
    private var allGradientLayers: [CAGradientLayer] = []


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
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Setup

    private func setupComponents()  {
        // Setup welcomeView
        let viewGradient = CAGradientLayer()
        viewGradient.colors = [UIColor(red: 0.969, green: 0.519, blue: 0.384, alpha: 1).cgColor /* #F78462 */, UIColor(red: 0.544, green: 0.107, blue: 0.547, alpha: 1).cgColor /* #8B1B8C */]
        viewGradient.locations = [0, 1]
        viewGradient.startPoint = CGPoint(x: 0.311, y: 1.098)
        viewGradient.endPoint = CGPoint(x: 0.689, y: -0.098)
        viewGradient.frame = self.view.bounds
        self.view.layer.insertSublayer(viewGradient, at: 0)
        self.allGradientLayers.append(viewGradient)
        
        
        // Setup spacebookLabel
        let spacebookLabelAttrString = NSMutableAttributedString(string: "Spacebook", attributes: [
            .font : UIFont(name: "Lato-Bold", size: 42)!,
            .foregroundColor : UIColor(red: 1, green: 1, blue: 1, alpha: 1),
            .kern : -1,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .center, lineHeight: nil, paragraphSpacing: 0)
        ])
        self.spacebookLabel.attributedText = spacebookLabelAttrString
        
        // Setup conquerTheStarsLabel
        
        // Setup logoImageView
        self.logoImageView.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2).cgColor /* #000000 */
        self.logoImageView.layer.shadowOffset = CGSize(width: 0, height: 20)
        self.logoImageView.layer.shadowRadius = 50
        self.logoImageView.layer.shadowOpacity = 1
        
        
        // Setup logInButton
        self.logInButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2).cgColor /* #000000 */
        self.logInButton.layer.shadowOffset = CGSize(width: 0, height: 20)
        self.logInButton.layer.shadowRadius = 50
        self.logInButton.layer.shadowOpacity = 1
        
        self.logInButton.layer.cornerRadius = 2
        self.logInButton.layer.masksToBounds = true
        self.logInButton.snImageTextSpacing = 10
        
        // Setup signUpButton
        self.signUpButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2).cgColor /* #000000 */
        self.signUpButton.layer.shadowOffset = CGSize(width: 0, height: 20)
        self.signUpButton.layer.shadowRadius = 50
        self.signUpButton.layer.shadowOpacity = 1
        
        self.signUpButton.layer.cornerRadius = 2
        self.signUpButton.layer.masksToBounds = true
        self.signUpButton.snImageTextSpacing = 10
        
        // Setup supernovaStuLabel
        
    }

    private func setupUI()  {
        let navigationBar = self.navigationController!.navigationBar
        let navigationGradient = CAGradientLayer()
        navigationGradient.frame = navigationBar.bounds
        navigationGradient.colors = [UIColor(red: 0.97, green: 0.52, blue: 0.38, alpha: 0).cgColor, UIColor(red: 0.97, green: 0.52, blue: 0.38, alpha: 1).cgColor]
        navigationGradient.locations = [0.000, 1.000]
        navigationGradient.startPoint = CGPoint(x: 0.5, y: 0)
        navigationGradient.endPoint = CGPoint(x: 0.5, y: 1)
        navigationBar.setBackgroundImage(UIImage.image(fromLayer: navigationGradient).resizableImage(withCapInsets: UIEdgeInsets.zero, resizingMode: .stretch), for: .default)
        
        navigationBar.tintColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        navigationBar.titleTextAttributes = [
            NSAttributedString.Key.font : UIFont.systemFont(ofSize: 12),
            NSAttributedString.Key.foregroundColor : UIColor(red: 0, green: 0, blue: 0, alpha: 1),
        ]
        
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }

    private func setupGestureRecognizers()  {
        let tapGROne = UITapGestureRecognizer(target: self, action: #selector(self.handleTapGROne(_:)))
        self.logoImageView.addGestureRecognizer(tapGROne)
    }

    private func setupLocalization()  {
        
        // Components
        self.spacebookLabel.replaceAttributedStringText(withLocalizedText: NSLocalizedString("Welcome.spacebookLabel", comment: ""))
        self.conquerTheStarsLabel.text = NSLocalizedString("Welcome.conquerTheStarsLabel", comment: "")
        self.logInButton.setTitle(NSLocalizedString("Welcome.logInButton", comment: ""), for: .normal)
        self.signUpButton.setTitle(NSLocalizedString("Welcome.signUpButton", comment: ""), for: .normal)
        self.supernovaStuLabel.text = NSLocalizedString("Welcome.supernovaStuLabel", comment: "")
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Layout

    override public func viewDidLayoutSubviews()  {
        super.viewDidLayoutSubviews()
        for layer in self.allGradientLayers {
            layer.frame = layer.superlayer?.frame ?? CGRect.zero
        }
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Status Bar

    override public var prefersStatusBarHidden: Bool  {
        return true
    }

    override public var preferredStatusBarStyle: UIStatusBarStyle  {
        return .default
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Actions

    @objc private func handleTapGROne(_ sender: UITapGestureRecognizer)  {
        self.animationOne()
    }

    @IBAction public func onLogInPressed(_ sender: UIButton)  {
        self.performSegue(withIdentifier: "Push Login", sender: nil)
    }

    @IBAction public func onSignUpPressed(_ sender: UIButton)  {
        self.performSegue(withIdentifier: "Push Signup", sender: nil)
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Animations

    private func animationOne()  {
        let groupOne = CAAnimationGroup()
        groupOne.beginTime = CACurrentMediaTime() + 0.0
        groupOne.repeatCount = Float(1)
        groupOne.duration = 0.5
        groupOne.autoreverses = false
        groupOne.isRemovedOnCompletion = false
        groupOne.fillMode = CAMediaTimingFillMode.removed
        groupOne.animations = []
        
        let animationOne = CABasicAnimation()
        animationOne.beginTime = 0
        animationOne.repeatCount = Float(1)
        animationOne.duration = 0.5
        animationOne.autoreverses = false
        animationOne.isRemovedOnCompletion = false
        animationOne.timingFunction = CAMediaTimingFunction(controlPoints: 0.42, 0, 0.58, 1)
        animationOne.keyPath = "transform.translation.y"
        animationOne.fromValue = 400
        groupOne.animations?.append(animationOne)
        
        let animationTwo = CABasicAnimation()
        animationTwo.beginTime = 0
        animationTwo.repeatCount = Float(1)
        animationTwo.duration = 0.5
        animationTwo.autoreverses = false
        animationTwo.isRemovedOnCompletion = false
        animationTwo.timingFunction = CAMediaTimingFunction(controlPoints: 0.42, 0, 0.58, 1)
        animationTwo.keyPath = "transform.rotation"
        animationTwo.fromValue = -45 / 180 * Double.pi
        animationTwo.toValue = 0 / 180 * Double.pi
        groupOne.animations?.append(animationTwo)
        
        let animationThree = CABasicAnimation()
        animationThree.beginTime = 0
        animationThree.repeatCount = Float(1)
        animationThree.duration = 0.5
        animationThree.autoreverses = false
        animationThree.isRemovedOnCompletion = false
        animationThree.timingFunction = CAMediaTimingFunction(controlPoints: 0.42, 0, 0.58, 1)
        animationThree.keyPath = "opacity"
        animationThree.fromValue = 0
        animationThree.toValue = 1
        groupOne.animations?.append(animationThree)
        
        self.logoImageView.layer.add(groupOne, forKey: nil)
    }
}
