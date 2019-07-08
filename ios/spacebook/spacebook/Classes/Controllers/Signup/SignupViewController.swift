//
//  SignupViewController.swift
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

class SignupViewController: UIViewController {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    @IBOutlet weak var signupView: UIView!
    @IBOutlet weak var signUpLabel: UILabel!
    @IBOutlet weak var itSFreeLabel: UILabel!
    @IBOutlet weak var signUpFieldsView: UIView!
    @IBOutlet weak var yourNicknameTextField: UITextField!
    @IBOutlet weak var yourSpacemailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signUpButton: SupernovaButton!
    @IBOutlet weak var logInButton: SupernovaButton!
    @IBOutlet weak var iAgreeWithIntergaLabel: UILabel!
    @IBOutlet weak var switchSwitch: UISwitch!
    var backBarButtonItem: UIBarButtonItem!
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
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Setup

    private func setupComponents()  {
        // Setup signupView
        let viewGradient = CAGradientLayer()
        viewGradient.colors = [UIColor(red: 0.969, green: 0.519, blue: 0.384, alpha: 1).cgColor /* #F78462 */, UIColor(red: 0.544, green: 0.107, blue: 0.547, alpha: 1).cgColor /* #8B1B8C */]
        viewGradient.locations = [0, 1]
        viewGradient.startPoint = CGPoint(x: 0.311, y: 1.098)
        viewGradient.endPoint = CGPoint(x: 0.689, y: -0.098)
        viewGradient.frame = self.view.bounds
        self.view.layer.insertSublayer(viewGradient, at: 0)
        self.allGradientLayers.append(viewGradient)
        
        
        // Setup signUpLabel
        let signUpLabelAttrString = NSMutableAttributedString(string: "Sign up", attributes: [
            .font : UIFont(name: "Lato-Bold", size: 42)!,
            .foregroundColor : UIColor(red: 1, green: 1, blue: 1, alpha: 1),
            .kern : -1,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .center, lineHeight: nil, paragraphSpacing: 0)
        ])
        self.signUpLabel.attributedText = signUpLabelAttrString
        
        // Setup itSFreeLabel
        
        // Setup signUpFieldsView
        self.signUpFieldsView.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2).cgColor /* #000000 */
        self.signUpFieldsView.layer.shadowOffset = CGSize(width: 0, height: 20)
        self.signUpFieldsView.layer.shadowRadius = 50
        self.signUpFieldsView.layer.shadowOpacity = 1
        
        self.signUpFieldsView.layer.cornerRadius = 2
        self.signUpFieldsView.layer.masksToBounds = true
        
        // Setup yourNicknameTextField
        
        // Setup yourSpacemailTextField
        
        // Setup passwordTextField
        
        // Setup signUpButton
        self.signUpButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2).cgColor /* #000000 */
        self.signUpButton.layer.shadowOffset = CGSize(width: 0, height: 20)
        self.signUpButton.layer.shadowRadius = 50
        self.signUpButton.layer.shadowOpacity = 1
        
        self.signUpButton.layer.cornerRadius = 2
        self.signUpButton.layer.masksToBounds = true
        self.signUpButton.snImageTextSpacing = 10
        
        // Setup logInButton
        self.logInButton.snImageTextSpacing = 10
        
        // Setup iAgreeWithIntergaLabel
        
        // Setup switchSwitch
        self.switchSwitch.layer.cornerRadius = 16
        self.switchSwitch.layer.masksToBounds = true
        
    }

    private func setupUI()  {
        // Hide the back button
        self.navigationItem.hidesBackButton = true
        // Left navigation items
        self.backBarButtonItem = UIBarButtonItem(image: UIImage(named: "group-2"), style: .plain, target: self, action: #selector(self.onGroupPressed(_:)))
        self.navigationItem.leftBarButtonItems = [ self.backBarButtonItem ]
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }

    private func setupGestureRecognizers()  {
    
    }

    private func setupLocalization()  {
        // Navigation
        self.navigationItem.title = NSLocalizedString("SignupViewController.navigationBarTitle", comment: "")
        
        self.backBarButtonItem.title = NSLocalizedString("Signup.backBarButtonItem", comment: "")
        
        // Components
        self.signUpLabel.replaceAttributedStringText(withLocalizedText: NSLocalizedString("Signup.signUpLabel", comment: ""))
        self.itSFreeLabel.text = NSLocalizedString("Signup.itSFreeLabel", comment: "")
        self.yourNicknameTextField.placeholder = NSLocalizedString("Signup.yourNicknameTextField", comment: "")
        self.yourSpacemailTextField.placeholder = NSLocalizedString("Signup.yourSpacemailTextField", comment: "")
        self.passwordTextField.placeholder = NSLocalizedString("Signup.passwordTextField", comment: "")
        self.signUpButton.setTitle(NSLocalizedString("Signup.signUpButton", comment: ""), for: .normal)
        self.logInButton.setTitle(NSLocalizedString("Signup.logInButton", comment: ""), for: .normal)
        self.iAgreeWithIntergaLabel.text = NSLocalizedString("Signup.iAgreeWithIntergaLabel", comment: "")
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

    @IBAction public func onSignUpPressed(_ sender: UIButton)  {
        self.performSegue(withIdentifier: "Modal Timeline", sender: nil)
    }

    @IBAction public func onLogInPressed(_ sender: UIButton)  {
    
    }

    @IBAction public func onSwitchValueChanged(_ sender: UISwitch)  {
    
    }
}
